# frozen_string_literal: true

require './lib/knights-travails'

describe Knight do
  describe '#knight_moves' do
    it 'returns the path of the knight moving once' do
      knight = Knight.new
      expect(knight.knight_moves([0, 0], [1, 2])).to eql([[0, 0], [1, 2]])
    end

end