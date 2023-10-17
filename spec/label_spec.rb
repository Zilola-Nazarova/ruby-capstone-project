require './classes/label'

describe Label do
  before :all do
    @label = Label.new 'Title', 'Color'
    @item = Item.new '2022-12-12'
  end

  context '#new' do
    it 'should take two parameters and return a Label object' do
      expect(@label).to be_an_instance_of Label
    end

    it 'item should have no label' do
      expect(@item.label).to be nil
    end
  end

  context 'should have correct attributes (title, color, items)' do
    it 'should return the correct title' do
      expect(@label.title).to eq 'Title'
    end

    it 'should return the correct color' do
      expect(@label.color).to eq 'Color'
    end

    it 'should have 0 items in @items array' do
      expect(@label.items.length).to eq 0
    end
  end
end
