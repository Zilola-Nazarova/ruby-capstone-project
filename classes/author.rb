class Author
  attr_reader :id, :first_name, :last_name, :items

  def initialize(id, first_name, last_name, items = [])
    @id = id
    @first_name = first_name
    @last_name = last_name
    @items = items
  end

  def add_item(item)
    @items << item
  end
end
