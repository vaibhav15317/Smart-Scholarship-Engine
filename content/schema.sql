-- Smart Scholarship Engine: SQLite schema
PRAGMA foreign_keys = ON;

DROP VIEW  IF EXISTS v_scholarships;
DROP TABLE IF EXISTS scholarship_categories;
DROP TABLE IF EXISTS scholarship_levels;
DROP TABLE IF EXISTS scholarship_courses;
DROP TABLE IF EXISTS scholarships;

CREATE TABLE scholarships (
  id                  INTEGER PRIMARY KEY,
  name                TEXT NOT NULL UNIQUE,
  provider            TEXT NOT NULL,
  level               TEXT NOT NULL CHECK (level IN ('Central', 'State')),
  state               TEXT,                       -- NULL = open to students in any state
  description         TEXT NOT NULL,
  amount_text         TEXT NOT NULL,
  amount_min_inr      INTEGER,                    -- yearly estimate, NULL when it varies
  amount_max_inr      INTEGER,
  min_marks           REAL    NOT NULL DEFAULT 0, -- minimum % marks, 0 = none
  merit_criterion     TEXT,                       -- non-% merit rule, e.g. board percentile
  max_income_inr      INTEGER,                    -- NULL = no income limit
  gender              TEXT NOT NULL DEFAULT 'Any' CHECK (gender IN ('Any', 'Female', 'Male')),
  requires_disability INTEGER NOT NULL DEFAULT 0 CHECK (requires_disability IN (0, 1)),
  requires_minority   INTEGER NOT NULL DEFAULT 0 CHECK (requires_minority IN (0, 1)),
  education_levels    TEXT NOT NULL,
  portal_name         TEXT NOT NULL,
  portal_url          TEXT NOT NULL,
  deadline_note       TEXT NOT NULL,              -- deadlines change every year, so this is a note
  verification        TEXT NOT NULL CHECK (verification IN ('researched', 'general-knowledge')),
  notes               TEXT
);

-- A scholarship is open to every course it has a row for.
CREATE TABLE scholarship_courses (
  scholarship_id INTEGER NOT NULL REFERENCES scholarships(id) ON DELETE CASCADE,
  course         TEXT NOT NULL CHECK (course IN ('Engineering', 'Medicine', 'Science', 'Commerce', 'Arts')),
  PRIMARY KEY (scholarship_id, course)
);

-- The study levels a scholarship is open to (a student picks one).
CREATE TABLE scholarship_levels (
  scholarship_id INTEGER NOT NULL REFERENCES scholarships(id) ON DELETE CASCADE,
  level          TEXT NOT NULL CHECK (level IN ('Class 11-12', 'Diploma/ITI', 'UG', 'PG', 'PhD')),
  PRIMARY KEY (scholarship_id, level)
);

-- No rows here means the scholarship is open to every category.
CREATE TABLE scholarship_categories (
  scholarship_id INTEGER NOT NULL REFERENCES scholarships(id) ON DELETE CASCADE,
  category       TEXT NOT NULL CHECK (category IN ('General', 'OBC', 'SC', 'ST', 'EWS')),
  PRIMARY KEY (scholarship_id, category)
);

CREATE INDEX idx_scholarships_state ON scholarships(state);
CREATE INDEX idx_scholarships_level ON scholarships(level);

CREATE VIEW v_scholarships AS
SELECT s.*,
       (SELECT group_concat(course, ', ')   FROM scholarship_courses    WHERE scholarship_id = s.id) AS courses,
       (SELECT group_concat(category, ', ') FROM scholarship_categories WHERE scholarship_id = s.id) AS categories
FROM scholarships s;
