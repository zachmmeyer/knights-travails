# frozen_string_literal: true

# Board class that contains the board matrix
class Board
  def initialize
    @matrix = Array.new(8) { Array.new(8, 0) }
  end

  def return_matrix
    @matrix
  end

  def mark_location_visited(location)
    return unless (0..7).include?(location[0] && location[1])

    x = location[0]
    y = location[1]
    return nil if @matrix[x][y] == 1

    @matrix[x][y] = 1
  end
end
