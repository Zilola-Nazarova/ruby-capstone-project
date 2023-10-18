require 'json'

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
          id: book.label.id
        },
        genre: {
          id: book.genre.id
        }
      }
    end
    File.write('./files/books.json', JSON.pretty_generate(books_json))
  end

  def save_labels
    labels_json = @labels.map do |label|
      {
        id: label.id,
        title: label.title,
        color: label.color
      }
    end
    File.write('./files/labels.json', JSON.pretty_generate(labels_json))
  end

  # save albums
  def save_albums
    all_music_albums = @music_albums.map do |album|
      {
        publish_date: album.publish_date,
        on_spotify: album.on_spotify,
        genre_name: album.genre.name,
        archived: album.archived,
        label: {
          id: album.label.id
        },
        genre: {
          id: album.genre.id
        }
      }
    end
    File.write('./files/musicalbum.json', JSON.pretty_generate(all_music_albums))
  end

  # save genres
  def save_genres
    all_genres = @genres.map do |genre|
      { id: genre.id, name: genre.name }
    end
    File.write('./files/genres.json', JSON.pretty_generate(all_genres))
  end
end
