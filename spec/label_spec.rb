require './classes/label'

describe Label do
  before :all do
    @label = Label.new 'Title', 'Color'
    @item = Item.new '2022-12-12'
  end
end
