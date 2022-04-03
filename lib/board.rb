# frozen_string_literal: true

# Board class that contains the board matrix
class Board
  def initialize
    @matrix = Array.new(8) { Array.new(8, 0) }
  end

  def return_matrix
    @matrix
  end

  def visited?(location)
    x = location[0]
    y = location[1]
    @matrix[x][y] == 1
  end

  def mark_location_visited(location)
    x = location[0]
    y = location[1]
    return unless (0..7).include?(x) && (0..7).include?(y)

    return nil if @matrix[x][y] == 1

    @matrix[x][y] = 1
  end
end
