require './preserve_data'
require './load_data'

# require './options/[Modules created by Suleiman]'
require './options/list_books'
require './options/list_labels'
require './options/add_book'
require './options/list_genres'
require './options/list_music_album'
require './options/add_musicalbum'

class App
  # include [Modules created by Suleiman]
  include AddMusicAlbum
  include ListMusicAlbums
  include ListGenres
  include AddBook
  include ListBooks
  include ListLabels

  include PreserveData
  include LoadData

  OPTIONS_HASH = {
    1 => :list_books,
    2 => :list_music_albums,
    # 3 => :Method to List all games created by Suleiman,
    4 => :list_genres,
    5 => :list_labels,
    # 6 => :Method to List all authors created by Suleiman,
    7 => :add_book,
    8 => :add_music_album
    # 9 => :Method to Add a game created by Suleiman
  }.freeze

  # change names of your variables if necessary
  attr_accessor :books, :music_albums, :games, :genres, :labels, :authors

  def initialize
    @books = [] # by Zilola
    @music_albums = [] # by Essohanam (change if necessary)
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
