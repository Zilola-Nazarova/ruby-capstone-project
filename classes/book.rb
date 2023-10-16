require './classes/item'

class Book < Item
  def initialize(publish_date, archived: false)
    super(publish_date, archived: archived)
  end
end
