require 'json'

module LoadData
  def load_all_files
    load_genres
    load_labels
    load_authors
    load_books
    load_albums
   load_game
  end

  def load_books
    return unless File.exist?('./files/books.json')

    books_json = JSON.parse(File.read('./files/books.json'))
    @books = books_json.map do |book|
      book_obj = Book.new(book['publisher'], book['cover_state'], book['publish_date'])
      book_obj.genre = @genres.find { |g| g.id == book['genre']['id'] }
      book_obj.label = @labels.find { |l| l.id == book['label']['id'] }
      book_obj
    end
  end

  def load_labels
    return unless File.exist?('./files/labels.json')

    labels_json = JSON.parse(File.read('./files/labels.json'))
    @labels = labels_json.map do |label|
      Label.new(label['title'], label['color'], label['id'])
    end
  end

  # load albums
  def load_albums
    return unless File.exist?('./files/musicalbum.json')

    musicalbums_loaded = JSON.parse(File.read('./files/musicalbum.json'))
    @music_albums = musicalbums_loaded.map do |album|
      album_obj = MusicAlbum.new(album['publish_date'], album['on_spotify'], archived: album['archived'])
      album_obj.genre = @genres.find { |g| g.id == album['genre']['id'] }
      album_obj.label = @labels.find { |l| l.id == album['label']['id'] }
      album_obj
    end
  end

  # load genre
  def load_genres
    return unless File.exist?('./files/genres.json')

    genres_loaded = JSON.parse(File.read('./files/genres.json'))
    @genres = genres_loaded.map do |genre|
      Genre.new(genre['name'], genre['id'])
    end
  end

  def load_authors
    return unless File.exist?('./files/authors.json')

    authors_json = JSON.parse(File.read('./files/authors.json'))
    @authors = authors_json.map do |author|
      Author.new(author['first_name'], author['last_name'])
    end
  end
end
