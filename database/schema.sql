CREATE TABLE book(
  id INT GENERATED ALWAYS AS IDENTITY
  publisher varchar(120),
  cover_state varchar(120),
  publish_date varchar(120),
  archived boolean
  PRIMARY KEY(id)
);

CREATE TABLE label(
  id INT GENERATED ALWAYS AS IDENTITY
  title varchar(120),
  color varchar(120),
  PRIMARY KEY(id)
);