# frozen_string_literal: true

require './lib/board'

describe Board do
  describe '#return_matrix' do
    it 'returns an initialized empty board' do
      board = Board.new
      array = [[0, 0, 0, 0, 0, 0, 0, 0],
               [0, 0, 0, 0, 0, 0, 0, 0],
               [0, 0, 0, 0, 0, 0, 0, 0],
               [0, 0, 0, 0, 0, 0, 0, 0],
               [0, 0, 0, 0, 0, 0, 0, 0],
               [0, 0, 0, 0, 0, 0, 0, 0],
               [0, 0, 0, 0, 0, 0, 0, 0],
               [0, 0, 0, 0, 0, 0, 0, 0]]
      expect(board.return_matrix).to eql(array)
    end
  end

  describe '#mark_location_visited' do
    it 'marks a valid space on the board as visited' do
      board = Board.new
      array = [[1, 0, 0, 0, 0, 0, 0, 0],
               [0, 0, 0, 0, 0, 0, 0, 0],
               [0, 0, 0, 0, 0, 0, 0, 0],
               [0, 0, 0, 0, 0, 0, 0, 0],
               [0, 0, 0, 0, 0, 0, 0, 0],
               [0, 0, 0, 0, 0, 0, 0, 0],
               [0, 0, 0, 0, 0, 0, 0, 0],
               [0, 0, 0, 0, 0, 0, 0, 0]]
      board.mark_location_visited([0, 0])
      expect(board.return_matrix).to eql(array)
    end

    it 'ignores attempts at marking an invalid space as visited' do
      board = Board.new
      array = [[0, 0, 0, 0, 0, 0, 0, 0],
               [0, 0, 0, 0, 0, 0, 0, 0],
               [0, 0, 0, 0, 0, 0, 0, 0],
               [0, 0, 0, 0, 0, 0, 0, 0],
               [0, 0, 0, 0, 0, 0, 0, 0],
               [0, 0, 0, 0, 0, 0, 0, 0],
               [0, 0, 0, 0, 0, 0, 0, 0],
               [0, 0, 0, 0, 0, 0, 0, 0]]
      board.mark_location_visited([-99, 99])
      expect(board.return_matrix).to eql(array)
    end

    it 'returns nil when attempting to mark a previously visited location' do
      board = Board.new
      board.mark_location_visited([0, 0])
      expect(board.mark_location_visited([0, 0])).to eql(nil)
    end
  end

  describe '#visited?' do
    it 'returns true if the location was previously visited' do
      board = Board.new
      board.mark_location_visited([0, 0])
      expect(board.visited?([0, 0])).to eql(true)
    end

    it 'returns false if the location was not previously visited' do
      board = Board.new
      expect(board.visited?([0, 0])).to eql(false)
    end
  end
end
