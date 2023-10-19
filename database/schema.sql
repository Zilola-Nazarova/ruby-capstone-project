-- CREATE DATABASE
-- from command line
createdb catalog_of_my_things;
-- or from psql session
CREATE DATABASE catalog_of_my_things;

-- Labels table
CREATE TABLE labels (
  id INT GENERATED ALWAYS AS IDENTITY,
  title VARCHAR (255) NOT NULL,
  color VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

-- Genres table
CREATE TABLE genres (
  id INT GENERATED ALWAYS AS IDENTITY,
  name VARCHAR (255) NOT NULL,
  PRIMARY KEY (id)
);

-- Authors table
CREATE TABLE authors (
  id INT GENERATED ALWAYS AS IDENTITY,
  first_name VARCHAR (255) NOT NULL,
  last_name VARCHAR (255) NOT NULL,
  PRIMARY KEY (id)
);

-- Books table
CREATE TABLE books (
  id INT GENERATED ALWAYS AS IDENTITY,
  genre_id INT NOT NULL,
  author_id INT NOT NULL,
  label_id INT NOT NULL,
  publisher VARCHAR (255) NOT NULL,
  cover_state VARCHAR (255) NOT NULL,
  publish_date DATE NOT NULL,
  archived BOOLEAN NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT fk_genre FOREIGN KEY (genre_id) REFERENCES genres (id),
  CONSTRAINT fk_author FOREIGN KEY (author_id) REFERENCES authors (id),
  CONSTRAINT fk_label FOREIGN KEY (label_id) REFERENCES labels (id)
);

-- Music Albums table
CREATE TABLE music_albums (
  id INT GENERATED ALWAYS AS IDENTITY,
  genre_id INT NOT NULL,
  author_id INT NOT NULL,
  label_id INT NOT NULL,
  on_spotify BOOLEAN NOT NULL,
  publish_date DATE NOT NULL,
  archived BOOLEAN NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT fk_genre FOREIGN KEY (genre_id) REFERENCES genres (id),
  CONSTRAINT fk_author FOREIGN KEY (author_id) REFERENCES authors (id),
  CONSTRAINT fk_label FOREIGN KEY (label_id) REFERENCES labels (id)
);

-- Games table
CREATE TABLE games (
  id INT GENERATED ALWAYS AS IDENTITY,
  genre_id INT NOT NULL,
  author_id INT NOT NULL,
  label_id INT NOT NULL,
  multiplayer BOOLEAN NOT NULL,
  last_played_at DATE NOT NULL,
  publish_date DATE NOT NULL,
  archived BOOLEAN NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT fk_genre FOREIGN KEY (genre_id) REFERENCES genres (id),
  CONSTRAINT fk_author FOREIGN KEY (author_id) REFERENCES authors (id),
  CONSTRAINT fk_label FOREIGN KEY (label_id) REFERENCES labels (id)
);
