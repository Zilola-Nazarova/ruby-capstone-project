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

CREATE TABLE
    genres (
        id INT GENERATED ALWAYS AS IDENTITY,
        name VARCHAR(255) NOT NULL,
        PRIMARY KEY(id)
);

CREATE TABLE music_albums (
    id INT GENERATED ALWAYS AS IDENTITY,
    title VARCHAR(255) NOT NULL,
    publish_date DATE NOT NULL,
    archived BOOLEAN NOT NULL,
    on_spotify BOOLEAN NOT NULL,
    item_id INT DEFAULT NULL,
    -- Foreign key that references the item table
    PRIMARY KEY(id),
    CONSTRAINT FK_item FOREIGN KEY (item_id) REFERENCES item (id)
);