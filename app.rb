require './preserve_data'
require './load_data'

# require './options/[Modules created by Essohanam]'
# require './options/[Modules created by Suleiman]'
# require './options/[Modules created by Zilola]'
require './options/example'

class App
  # include [Modules created by Essohanam]
  # include [Modules created by Suleiman]
  # include [Modules created by Zilola]
  include Example

  include PreserveData
  include LoadData

  OPTIONS_HASH = {
    # example (this is how to include your methods)
    1 => :example
    # 1 => :[Method to List all books created by Zilola],
    # 2 => :[Method to List all music albums created by Essohanam],
    # 3 => :Method to List all movies We don not have this option,
    # 4 => :Method to List of games created by Suleiman,
    # 5 => :Method to List all genres created by Essohanam,
    # 6 => :Method to List all labels created by Zilola,
    # 7 => :Method to List all authors created by Suleiman,
    # 8 => :Method to List all sources We don not have this option,
    # 9 => :Method to Add a book created by Zilola,
    # 10 => :Method to Add a music album created by Essohanam,
    # 11 => :Method to Add a movie We don not have this option,
    # 12 => :Method to Add a game created by Suleiman
  }.freeze

  # change names of your variables if necessary
  attr_accessor :books, :albums, :games, :genres, :labels, :authors

  def initialize
    @books = [] # by Zilola
    @albums = [] # by Essohanam (change if necessary)
    @games = [] # by Suleiman (change if necessary)
    @genres = [] # by Essohanam (change if necessary)
    @labels = [] # by Zilola
    @authors = [] # by Suleiman (change if necessary)

    load_all_files
  end

  def call_option(option)
    if option.zero?
      save_all_files
      puts 'Thank you for using our app!'
    else
      method(OPTIONS_HASH[option]).call
    end
  end
end
