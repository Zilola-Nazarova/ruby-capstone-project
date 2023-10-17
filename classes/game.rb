class Game
  # Attributes
  attr_accessor :id, :name, :genre, :multiplayer, :last_played_at

  # Methods
  def initialize(id, name, genre, multiplayer, last_played_at)
    @id = id
    @name = name
    @genre = genre
    @multiplayer = multiplayer
    @last_played_at = last_played_at
  end

  def can_be_archived?
    false
  end
end
