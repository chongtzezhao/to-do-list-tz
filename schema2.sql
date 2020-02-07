CREATE TABLE tasks (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  task TEXT NOT NULL,
  details TEXT,
  dueby TEXT NOT NULL,
  completed BOOLEAN NOT NULL,
);

