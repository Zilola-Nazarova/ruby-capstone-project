require './classes/book'
require './classes/label'
require './options/list_labels'

module AddBook
  def add_book
    puts 'The book was published by ...'
    publisher = gets.chomp.to_s
    puts "Describe a cover state of the book (e.g. 'good', 'bad')"
    cover_state = gets.chomp.to_s
    puts "When the book was published? Provide in format 'dd-mm-yyyy'"
    loop do
      publish_date = gets.chomp
      if publish_date =~ /^\d{4}-(0[1-9]|1[012])-(0[1-9]|[12][0-9]|3[01])$/
        @book = Book.new(publisher, cover_state, publish_date)
        @books.push(@book)
        puts 'Book created successfully'
        choose_label
        break
      elsif publish_date == 'exit'
        puts 'Navigating back to menu'
        return
      else
        puts "Provide the date in format 'yyyy-mm-dd' or type 'exit' to go to main menu"
      end
    end
  end

  def choose_label
    puts "Add a Label to the Book\n0) Create a new label"
    list_labels unless @labels.empty?
    loop do
      label_index = gets.chomp.to_i
      if label_index.zero?
        puts 'Label title:'
        title = gets.chomp.to_s
        puts 'Label color:'
        color = gets.chomp.to_s
        label = Label.new(title, color)
        @labels.push(label)
        @book.label = label
        puts 'Label was created and assigned to the Book'
        break
      elsif (1...(@labels.length)).include?(label_index)
        @book.label = @labels[label_index]
        puts 'Label was assigned to the Book'
        break
      else
        puts "Please provide a valide input (0-#{@labels.length})"
      end
    end
  end
end
