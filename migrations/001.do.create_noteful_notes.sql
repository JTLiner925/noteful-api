CREATE TABLE folders (
  id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY ,
  folder_name TEXT NOT NULL,
  UNIQUE (id)
);

CREATE TABLE notes (
  id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
  note_name TEXT NOT NULL,
  modified TIMESTAMPTZ DEFAULT now() NOT NULL,
  folder_id INTEGER REFERENCES folders(id) ON DELETE CASCADE NOT NULL,
  content TEXT NOT NULL
);