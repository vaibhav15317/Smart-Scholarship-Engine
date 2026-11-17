"""Smart Scholarship Engine: local web server.

Serves the website and answers /api/match by querying scholarships.db live.
Uses only the Python standard library, so there is nothing to install.

Run:  python server.py        then open  http://localhost:8000
"""
import json
import mimetypes
import os
import sqlite3
import sys
from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer
from urllib.parse import parse_qs, urlparse

BASE = os.path.dirname(os.path.abspath(__file__))
DB_PATH = os.path.join(BASE, "scholarships.db")
PORT = int(os.environ.get("PORT", "8000"))

# Only these files are served. The database and SQL files are never exposed.
STATIC = {
    "/": "index.html",
    "/index.html": "index.html",
    "/styles.css": "styles.css",
    "/script.js": "script.js",
}

MATCH_SQL = """
SELECT * FROM v_scholarships s
WHERE s.min_marks <= :marks
  AND (s.max_income_inr IS NULL OR s.max_income_inr >= :income)
  AND EXISTS (SELECT 1 FROM scholarship_courses c
              WHERE c.scholarship_id = s.id AND c.course = :course)
  AND EXISTS (SELECT 1 FROM scholarship_levels l
              WHERE l.scholarship_id = s.id AND l.level = :level)
  AND (s.state IS NULL OR s.state = :state)
  AND (NOT EXISTS (SELECT 1 FROM scholarship_categories k WHERE k.scholarship_id = s.id)
       OR EXISTS (SELECT 1 FROM scholarship_categories k
                  WHERE k.scholarship_id = s.id AND k.category = :category))
  AND (s.gender = 'Any' OR s.gender = :gender)
  AND (s.requires_disability = 0 OR :disability = 1)
  AND (s.requires_minority = 0 OR :minority = 1)
ORDER BY s.amount_max_inr IS NULL, s.amount_max_inr DESC, s.name
"""


def connect():
    con = sqlite3.connect("file:%s?mode=ro" % DB_PATH.replace("\\", "/"), uri=True)
    con.row_factory = sqlite3.Row
    return con


def to_json(r):
    return {
        "id": r["id"],
        "name": r["name"],
        "provider": r["provider"],
        "level": r["level"],
        "state": r["state"],
        "description": r["description"],
        "amountText": r["amount_text"],
        "amountMax": r["amount_max_inr"],
        "minMarks": r["min_marks"],
        "meritCriterion": r["merit_criterion"],
        "maxIncome": r["max_income_inr"],
        "gender": r["gender"],
        "requiresDisability": bool(r["requires_disability"]),
        "requiresMinority": bool(r["requires_minority"]),
        "educationLevels": r["education_levels"],
        "portalName": r["portal_name"],
        "portalUrl": r["portal_url"],
        "deadlineNote": r["deadline_note"],
        "verification": r["verification"],
        "notes": r["notes"],
        "courses": r["courses"].split(", ") if r["courses"] else [],
        "categories": r["categories"].split(", ") if r["categories"] else [],
    }


def num(value, default):
    try:
        return float(value)
    except (TypeError, ValueError):
        return default


class Handler(BaseHTTPRequestHandler):
    def send_bytes(self, status, body, ctype):
        self.send_response(status)
        self.send_header("Content-Type", ctype)
        self.send_header("Content-Length", str(len(body)))
        self.send_header("Cache-Control", "no-store")
        self.end_headers()
        self.wfile.write(body)

    def send_json(self, status, payload):
        body = json.dumps(payload, ensure_ascii=False).encode("utf-8")
        self.send_bytes(status, body, "application/json; charset=utf-8")

    def do_GET(self):
        url = urlparse(self.path)
        path = url.path

        if path in STATIC:
            with open(os.path.join(BASE, STATIC[path]), "rb") as f:
                body = f.read()
            ctype = mimetypes.guess_type(STATIC[path])[0] or "application/octet-stream"
            if ctype.startswith("text/") or ctype.endswith("javascript"):
                ctype += "; charset=utf-8"
            return self.send_bytes(200, body, ctype)

        if path == "/api/match":
            return self.api_match(parse_qs(url.query))

        if path == "/api/scholarships":
            with connect() as con:
                rows = con.execute(
                    "SELECT * FROM v_scholarships ORDER BY level, state, name"
                ).fetchall()
            return self.send_json(200, [to_json(r) for r in rows])

        self.send_json(404, {"error": "Not found"})

    def api_match(self, qs):
        get = lambda k, d="": (qs.get(k) or [d])[0]
        params = {
            "course": get("course"),
            "level": get("level"),
            "category": get("category"),
            "state": get("state"),
            "gender": get("gender"),
            "marks": num(get("marks"), 0),
            "income": num(get("income"), 0),
            "disability": 1 if get("disability") == "1" else 0,
            "minority": 1 if get("minority") == "1" else 0,
        }
        with connect() as con:
            rows = con.execute(MATCH_SQL, params).fetchall()
            total = con.execute("SELECT COUNT(*) FROM scholarships").fetchone()[0]
        self.send_json(200, {"total": total, "matches": [to_json(r) for r in rows]})

    def log_message(self, fmt, *args):
        sys.stderr.write("%s - %s\n" % (self.address_string(), fmt % args))


def main():
    if not os.path.exists(DB_PATH):
        sys.exit("scholarships.db not found next to server.py. Build it with:\n"
                 "  python build_db.py")
    server = ThreadingHTTPServer(("127.0.0.1", PORT), Handler)
    print("Smart Scholarship Engine running at http://localhost:%d  (Ctrl+C to stop)" % PORT)
    try:
        server.serve_forever()
    except KeyboardInterrupt:
        print("\nStopped.")


if __name__ == "__main__":
    main()
