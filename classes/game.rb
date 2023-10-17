class GameAttributes
  attr_accessor :genre_id, :author_id, :source_id, :label_id, :title, :multiplayer, :last_played_at

  def initialize(genre_id, author_id, source_id, label_id, title, multiplayer, last_played_at)
    @genre_id = genre_id
    @author_id = author_id
    @source_id = source_id
    @label_id = label_id
    @title = title
    @multiplayer = multiplayer
    @last_played_at = last_played_at
  end
end

class Game < Item
  def initialize(attributes, publish_date, archived: false)
    super(publish_date, archived: archived)
    @attributes = attributes
  end

  def can_be_archived?
    false
  end
end
