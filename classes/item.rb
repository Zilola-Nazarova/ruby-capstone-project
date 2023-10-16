class Item
  attr_accessor :genre, :source, :label, :publish_date
  attr_reader :id, :archived

  def initialize(genre, source, label, publish_date, archived)
    @id = Random.rand(1..1000)
    @genre = genre
    @source = source
    @label = label
    @publish_date = publish_date
    @archived = archived
  end

  private

  def can_be_archived?
    diff_years = Date.today.year - @publish_date.year
    diff_years >= 10
  end

  public

  def move_to_archive
    return unless @can_be_archived

    true
  end
end
