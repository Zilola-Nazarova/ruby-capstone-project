require 'json'
require_relative 'classes/musicalbum'
require_relative 'classes/genre'

module PreserveData
  def save_all_files
    save_books
    save_albums
    # save_games by Suleiman (change if necessary)
    save_genres
    save_labels
    # save_authors by Suleiman (change if necessary)
  end

  def save_books
    books_json = @books.map do |book|
      {
        publisher: book.publisher,
        cover_state: book.cover_state,
        publish_date: book.publish_date,
        archived: book.archived,
        label: {
          title: book.label.title,
          color: book.label.color
        }
      }
    end
    File.write('./files/books.json', JSON.pretty_generate(books_json))
  end

  def save_labels
    labels_json = @labels.map do |label|
      {
        title: label.title,
        color: label.color
      }
    end
    File.write('./files/labels.json', JSON.pretty_generate(labels_json))
  end

  # save_albums and save_genre
  # save albums
  def save_albums(musicalbum)
    new_music_album = { id: musicalbum.id, publish_date: musicalbum.publish_date,
                        on_spotify: musicalbum.on_spotify, genre_id: musicalbum.genre_id }
    if File.exist?('./files/musicalbum.json')
      musicalbum_loaded = JSON.parse(File.read('./data/musicalbum.json'))
      musicalbum_loaded << new_music_album
      File.write('./files/musicalbum.json', JSON.pretty_generate(musicalbum_loaded))
    else
      File.write('./files/musicalbum.json', JSON.pretty_generate([new_music_album]))
    end
  end

  # save genre
  def save_genre(genre)
    new_genre = { id: genre.id, name: genre.name }
    if File.exist?('./files/genres.json')
      genres_loaded = JSON.parse(File.read('./files/genres.json'))
      genres_loaded << new_genre
      File.write('./files/genres.json', JSON.pretty_generate(genres_loaded))
    else
      File.write('./data/genres.json', JSON.pretty_generate([new_genre]))
    end
  end
end
