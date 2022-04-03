# frozen_string_literal: true

require_relative('location')
require_relative('board')
# Knight class
class Knight
  include Location

  def validate_moves(all_moves)
    all_moves.filter do |move|
      (0..7).include?(move[0]) && (0..7).include?(move[1])
    end
  end

  def generate_moves(location)
    all_moves = []
    all_moves << left_up_up(location)
    all_moves << left_down_down(location)
    all_moves << left_left_up(location)
    all_moves << left_left_down(location)
    all_moves << right_up_up(location)
    all_moves << right_down_down(location)
    all_moves << right_right_up(location)
    all_moves << right_right_down(location)
    all_moves
  end

  def knight_moves(start_location, end_location)
    # return "You made it in zero moves!\n#{start_location}\n#{end_location}\n" if start_location == end_location

    board = Board.new
    queue = [start_location]
    path = [start_location]
    while queue.any?
      current_location = queue[0]
      queue.shift
      next if board.visited?(current_location)

      board.mark_location_visited(current_location)
      all_moves = generate_moves(current_location)
      valid_moves = validate_moves(all_moves)
      if current_location == end_location
        # Break loop
        # Print path
        return "You made it in 0 moves!\n#{start_location}\n#{end_location}\n"
      end
      queue += valid_moves
    end
  end
end
