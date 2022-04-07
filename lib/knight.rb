# frozen_string_literal: true

require_relative('location')
require_relative('board')
# Knight class
class Knight
  include Location

  def remove_visited_locations(moves, board)
    moves.filter do |move|
      !board.visited?(move)
    end
  end

  def validate_moves(moves)
    moves.select do |move|
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

  def generate_path(reversed_edge_list, start_location, end_location, path = [])
    path << end_location
    while reversed_edge_list.length > 1
      path << reversed_edge_list[0][0]
      next_in_path = reversed_edge_list[0][0]
      reversed_edge_list.shift
      reversed_edge_list.shift until reversed_edge_list[0].include?(next_in_path)
    end
    path << start_location
    path.reverse
  end

  def knight_moves(start_location, end_location)
    return "You made it in zero moves!\n#{start_location}\n#{end_location}\n" if start_location == end_location

    board = Board.new
    queue = [start_location]
    count = 0
    edge_list = []
    while queue.any?
      current_location = queue[0]
      queue.shift
      next if board.visited?(current_location)

      board.mark_location_visited(current_location)
      all_moves = generate_moves(current_location)
      valid_moves = validate_moves(all_moves)
      edge_list << [current_location] + valid_moves
      if edge_list[count].include?(end_location)
        reversed_edge_list = edge_list.reverse
        path = generate_path(reversed_edge_list, start_location, end_location)
        return path
        # return 'Found it!'
      end
      count += 1
      queue += valid_moves
    end
  end
end
