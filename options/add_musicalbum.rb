require './classes/musicalbum'
require './classes/genre'
require './options/list_music_albums'

def add_music_album
  puts 'Enter album label:'
  label = gets.chomp

  puts 'Enter album genre:'
  genre_name = gets.chomp
  genre = @genres.find { |g| g.name == genre_name } || Genre.new(genre_name)
  @genres << genre unless @genres.include?(genre)
  puts 'Enter publish date (yyyy-mm-dd):'
  publish_date = gets.chomp
  puts 'Available on Spotify? (y/n):'
  on_spotify = gets.chomp.downcase == 'y'

  album = MusicAlbum.new(label, genre, publish_date, on_spotify, nil)
  attribute_game_to_author(album)
  @music_albums << album
  genre.add_item(album)

  puts 'Album added successfully!'
end
