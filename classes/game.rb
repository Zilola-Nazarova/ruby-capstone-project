class Game < Item
  # Attributes
  attr_accessor :genre_id, :author_id, :source_id, :label_id, :title, :multiplayer, :last_played_at

  # Methods
  def initialize(genre_id, author_id, source_id, label_id, title, multiplayer, last_played_at, publish_date, archived: false)
    super(publish_date, archived: archived)
    @genre_id = genre_id
    @author_id = author_id
    @source_id = source_id
    @label_id = label_id
    @title = title
    @multiplayer = multiplayer
    @last_played_at = last_played_at
  end

  def can_be_archived?
    false
  end
end
