require './classes/item'
require './classes/genre'
require './classes/author'
require './classes/label'

describe Item do
  before :all do
    @item = Item.new '2022-12-12'
    @item_new = Item.new '2023-12-12'
    @item_old = Item.new '1998-12-12'
  end

  context '#new' do
    it 'should take one parameter and return a Item object' do
      expect(@item).to be_an_instance_of Item
    end

    it 'publish_date should be an istance of Date' do
      expect(@item.publish_date).to be_an_instance_of Date
    end

    it 'item should have no label' do
      expect(@item.label).to be nil
    end

    it 'item should have no genre' do
      expect(@item.genre).to be nil
    end

    it 'item should have no author' do
      expect(@item.author).to be nil
    end
  end

  context 'set attributes' do
    before :all do
      @label = Label.new('Title', 'Color')
      @genre = Genre.new('Rock')
      @author = Author.new('John', 'Doe')
      @item.label = @label
      @item.genre = @genre
      @item.author = @author
    end

    it 'should return the correct label' do
      expect(@item.label).to eq @label
    end

    it 'should return the correct genre' do
      expect(@item.genre).to eq @genre
    end

    it 'should return the correct genre' do
      expect(@item.author).to eq @author
    end
  end

  context '#can_be_archived?' do
    it 'should return false for @item_new' do
      expect(@item_new.instance_eval('can_be_archived?', __FILE__, __LINE__)).to eq false
    end

    it 'should return true for @item_old' do
      expect(@item_old.instance_eval('can_be_archived?', __FILE__, __LINE__)).to eq true
    end
  end

  context '#move_to_archive' do
    before :all do
      @item_new.move_to_archive
      @item_old.move_to_archive
    end

    it 'archived property should remain false' do
      expect(@item_new.archived).to eq false
    end

    it 'archived property should change to true' do
      expect(@item_old.archived).to eq true
    end
  end
end
