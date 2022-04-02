# frozen_string_literal: true

require './lib/location'

class Knight
end

describe Location do
  knight = Knight.new

  describe '#left_up_up' do
    it 'returns the end location of the knight moving one space to the left and two spaces up' do
      expect(knight.left_up_up([3, 3])).to eql([2, 1])
    end
  end

  describe '#left_down_down' do
    it 'returns the end location of the knight moving one space to the left and two spaces down' do
      expect(knight.left_down_down([3, 3])).to eql([2, 5])
    end
  end

  describe '#right_up_up' do
    it 'returns the end location of the knight moving one space to the right and two spaces up' do
      expect(knight.right_up_up([3, 3])).to eql([4, 1])
    end
  end

  describe '#right_down_down' do
    it 'returns the end location of the knight moving two spaces up and one to the right' do
      expect(knight.right_down_down([3, 3])).to eql([4, 5])
    end
  end

  describe '#left_left_up' do
    it 'returns the end location of the knight moving one space to the left twice and once up' do
      expect(knight.left_left_up([3, 3])).to eql([1, 2])
    end
  end

  describe '#left_left_down' do
    it 'returns the end location of the knight moving one space to the left twice and once down' do
      expect(knight.left_left_down([3, 3])).to eql([1, 4])
    end
  end

  describe '#right_right_up' do
    it 'returns the end location of the knight moving one space to the right twice and once up' do
      expect(knight.right_right_up([3, 3])).to eql([5, 2])
    end
  end

  describe '#right_right_down' do
    it 'returns the end location of the knight moving one space to the right twice and once down' do
      expect(knight.right_right_down([3, 3])).to eql([5, 4])
    end
  end
end
