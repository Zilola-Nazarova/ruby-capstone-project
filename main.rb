require './app'

def show_options
  puts "Please choose an option by entering a number:
1 - List all books
2 - List all music albums
3 - List all movies
4 - List of games
5 - List all genres
6 - List all labels
7 - List all authors
8 - List all sources
9 - Add a book
10 - Add a music album
11 - Add a movie
12 - Add a game
0 - Exit"
end

def main
  app = App.new
  puts "Welcome to 'Catalog of my things' App!"
  show_options
  loop do
    option = gets.chomp.to_i
    if (0..12).include?(option)
      app.call_option(option)
      show_options
    else
      puts "\nChoose a number between 0 and 12"
    end
  end
end

main
