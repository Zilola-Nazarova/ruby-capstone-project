require_relative 'item'

class Game < Item
  # Attributes
  attr_accessor :multiplayer, :last_played_at

  # Methods
  def initialize(multiplayer, last_played_at, publish_date, archived: false)
    super(publish_date, archived: archived)
    @multiplayer = multiplayer
    @last_played_at = last_played_at
  end

  def can_be_archived?
    false
  end
end
