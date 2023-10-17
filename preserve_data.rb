require 'json'

module PreserveData
  def save_all_files
    save_books # by Zilola
    # save_albums by Essohanam (change if necessary)
    # save_games by Suleiman (change if necessary)
    # save_genres by Essohanam (change if necessary)
    save_labels # by Zilola
    # save_authors by Suleiman (change if necessary)
  end

  def save_books
    File.open('./files/books.json', 'w') {|file| file.truncate(0) }
    @books.map do |book|
      book_json = JSON.generate(book)
      File.write('./files/books.json', "#{book_json}\n", mode: 'a')
    end
  end

  def save_labels
    File.open('./files/labels.json', 'w') {|file| file.truncate(0) }
    @labels.map do |label|
      label_json = JSON.generate(label)
      File.write('./files/labels.json', "#{label_json}\n", mode: 'a')
    end
  end
end
