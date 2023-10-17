require './classes/musicalbum'
require './classes/genre'

describe Genre do
  let(:genre_name) { 'Rock' }
  let(:genre) { Genre.new(genre_name) }

  describe '#initialize' do
    it 'sets the name correctly' do
      expect(genre.name).to eq(genre_name)
    end

    it 'initializes the items array' do
      expect(genre.items).to be_an(Array)
      expect(genre.items).to be_empty
    end

    it 'generates a random id' do
      expect(genre.instance_variable_get(:@id)).to be_an(Integer)
    end
  end
end
