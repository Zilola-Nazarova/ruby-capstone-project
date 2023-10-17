require 'json'

module LoadData
  def load_all_files
    load_books # by Zilola
    # load_albums by Essohanam (change if necessary)
    # load_games by Suleiman (change if necessary)
    # load_genres by Essohanam (change if necessary)
    load_labels
    # load_authors by Suleiman (change if necessary)
  end

  def load_books
    File.exist?('./files/books.json') ? books_json = JSON.parse(File.read('./files/books.json')) : return
    @books = books_json.map do |book|
      Book.new(book['publisher'], book['cover_state'], book['publish_date'])
      book.label = Label.new(book['label']['title'], book['label']['color'])
    end
  end

  def load_labels
    File.exist?('./files/labels.json') ? labels_json = JSON.parse(File.read('./files/labels.json')) : return
    @labels = labels_json.map do |label|
      Label.new(label['title'], label['color'])
    end
  end
end
