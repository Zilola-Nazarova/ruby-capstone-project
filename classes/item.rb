require 'date'

class Item
  attr_accessor :date, :publish_date
  attr_reader :id, :archived, :label, :author, :genre

  def initialize(publish_date)

    @publish_date = (Date.parse(publish_date) if publish_date.is_a?(String))

    @id = Random.rand(1...1000)
    @archived = false
  end

  def can_be_archived?
    now = Date.today
    ten_years_ago = now - 3652
    return false if @publish_date.nil?
    return false if @publish_date > ten_years_ago

    true
  end

  def move_to_archive
    return unless can_be_archived?

    @archived = true
  end

  def genre=(genre)
    @genre = genre
    genre.items.push(self) unless genre.items.include?(self)
  end

  def author=(author)
    @author = author
    author.items.push(self) unless author.items.include?(self)
  end

  def label=(label)
    @label = label
    label.items.push(self) unless label.items.include?(self)
  end
end
