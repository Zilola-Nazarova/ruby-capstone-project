require_relative './item'
require 'date'

module AddGame
  include AddProps

  def add_game
    puts 'Is the game multiplayer? (yes/no)'
    multiplayer_input = gets.chomp.downcase
    multiplayer = multiplayer_input == 'yes'

    puts 'When was the game last played? Provide in format \'yyyy-mm-dd\''
    loop do
      last_played_date = gets.chomp
      break if last_played_date =~ /^\d{4}-(0[1-9]|1[012])-(0[1-9]|[12][0-9]|3[01])$/

      return if last_played_date == 'exit'

      puts "Provide the date in format 'yyyy-mm-dd' or type 'exit' to go to the main menu"
    end

    puts 'When was the game published? Provide in format \'yyyy-mm-dd\''
    loop do
      publish_date = gets.chomp
      break if publish_date =~ /^\d{4}-(0[1-9]|1[012])-(0[1-9]|[12][0-9]|3[01])$/

      return if publish_date == 'exit'

      puts "Provide the date in format 'yyyy-mm-dd' or type 'exit' to go to the main menu"
    end

    game = Game.new(multiplayer, Date.parse(last_played_date), publish_date)
    @games.push(game)

    choose_label(game)
  end
end
