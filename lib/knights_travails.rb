# frozen_string_literal: true

require_relative('knight')

puts 'Welcome to Knights Travails!'
puts 'We need to gather some data from you!'
puts 'We need four numbers: the x and y (0-7) of the start and end locations for the Knight!'
puts '(We also really struggle with incorret input at this point, so please be gentle)'
puts 'Please give the X and Y of the start location (example: 0,0):'
start_location = gets.chomp.split(',').map(&:to_i)
puts 'Please give the X and Y of the end location (example: 0,0):'
end_location = gets.chomp.split(',').map(&:to_i)
knight = Knight.new
path = knight.knight_moves(start_location, end_location)
puts "You made it in #{path.length - 1} moves! Here's your path"
path.each { |space| p space }
