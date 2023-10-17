require './classes/book'

describe Book do
  before :all do
    @book = Book.new 'Publisher', 'good', '2022-12-12'
    @new_book_good = Book.new 'Publisher', 'good', '2022-12-12'
    @old_book_good = Book.new 'Publisher', 'good', '1990-12-12'
    @new_book_bad = Book.new 'Publisher', 'BaD', '2022-12-12'
    @old_book_bad = Book.new 'Publisher', 'BaD', '1990-12-12'
  end
end
