require_relative '../classes/game'

RSpec.describe Game do
  let(:publish_date) { Date.new(2022, 1, 1) }
  let(:last_played_at) { DateTime.new(2023, 1, 1) }
  let(:game) { Game.new(true, last_played_at, publish_date) }

  describe '#initialize' do
    it 'creates a new game with specified attributes' do
      expect(game.multiplayer).to eq(true)
      expect(game.last_played_at).to eq(last_played_at)
      expect(game.publish_date).to eq(publish_date)
      expect(game.archived).to eq(false) # Default value for archived is false
    end
  end

  describe '#can_be_archived?' do
    context 'when last_played_at is more than 2 years ago' do
      let(:last_played_at) { DateTime.new(2020, 1, 1) }

      it 'returns true' do
        expect(game.can_be_archived?).to eq(true)
      end
    end

    context 'when last_played_at is within the last 2 years' do
      let(:last_played_at) { DateTime.new(2022, 1, 1) }

      it 'returns false' do
        expect(game.can_be_archived?).to eq(false)
      end
    end

    context 'when the game is already archived' do
      let(:game) { Game.new(true, last_played_at, publish_date, archived: true) }

      it 'returns true' do
        expect(game.can_be_archived?).to eq(true)
      end
    end
  end
end
