# frozen_string_literal: true

require './lib/knight'

describe Knight do
  describe '#generate_moves' do
    it 'returns an array of all surrounding moves' do
      knight = Knight.new
      location = [3, 3]
      moves = [[2, 1], [2, 5], [1, 2], [1, 4], [4, 1], [4, 5], [5, 2], [5, 4]]
      expect(knight.generate_moves(location)).to eql(moves)
    end

    it 'returns an array of all surrounding moves, including illegal ones' do
      knight = Knight.new
      location = [0, 0]
      moves = [[-1, -2], [-1, 2], [-2, -1], [-2, 1], [1, -2], [1, 2], [2, -1], [2, 1]]
      expect(knight.generate_moves(location)).to eql(moves)
    end
  end

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
