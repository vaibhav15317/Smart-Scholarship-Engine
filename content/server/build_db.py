"""Rebuild scholarships.db from schema.sql and seed.sql.

Run:  python build_db.py
"""
import os
import sqlite3

BASE = os.path.dirname(os.path.abspath(__file__))
db_path = os.path.join(BASE, "scholarships.db")

if os.path.exists(db_path):
    os.remove(db_path)

con = sqlite3.connect(db_path)
for name in ("schema.sql", "seed.sql"):
    with open(os.path.join(BASE, name), encoding="utf-8") as f:
        con.executescript(f.read())
con.commit()
count = con.execute("SELECT COUNT(*) FROM scholarships").fetchone()[0]
con.close()
print("Built scholarships.db with %d scholarships." % count)
