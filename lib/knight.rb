# frozen_string_literal: true

require_relative('location')
require_relative('board')
# Knight class
class Knight
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
    return "You made it in zero moves!\n#{start_location}\n#{end_location}\n" if start_location == end_location

  end
end
