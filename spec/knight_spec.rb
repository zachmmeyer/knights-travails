# frozen_string_literal: true

require './lib/knight'

describe Knight do
  describe '#knight_moves' do
    it 'returns the path of the knight not moving' do
      knight = Knight.new
      expected = <<~RESPONSE
        You made it in zero moves!
        [0, 0]
        [0, 0]
      RESPONSE
      expect(knight.knight_moves([0, 0], [0, 0])).to eql(expected)
    end

    xit 'returns the path of the knight moving once' do
      knight = Knight.new
      expected = <<~RESPONSE
        You made it in one move!
        [0, 0]
        [1, 2]
      RESPONSE
      expect(knight.knight_moves([0, 0], [1, 2])).to eql(expected)
    end

    xit 'returns the path of the knight moving twice' do
      knight = Knight.new
      expected = <<~RESPONSE
        You made it in two moves!
        [0, 0]
        [1, 2]
        [3, 3]
      RESPONSE
      expect(knight.knight_moves([0, 0], [3, 3])).to eql(expected)
    end
  end
end
