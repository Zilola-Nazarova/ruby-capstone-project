require 'json'

module PreserveData
  def save_all_files
    save_books
    # save_albums by Essohanam (change if necessary)
    # save_games by Suleiman (change if necessary)
    # save_genres by Essohanam (change if necessary)
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
end
