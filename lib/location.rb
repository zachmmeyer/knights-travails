# frozen_string_literal: true

# Location module that contains methods for moving the knight
module Location
  def left_up_up(location)
    location[0] -= 1
    location[1] -= 2
    location
  end

  def left_down_down(location)
    location[0] -= 1
    location[1] += 2
    location
  end

  def right_up_up(location)
    location[0] += 1
    location[1] -= 2
    location
  end

  def right_down_down(location)
    location[0] += 1
    location[1] += 2
    location
  end

  def left_left_up(location)
    location[0] -= 2
    location[1] -= 1
    location
  end

  def left_left_down(location)
    location[0] -= 2
    location[1] += 1
    location
  end

  def right_right_up(location)
    location[0] += 2
    location[1] -= 1
    location
  end

  def right_right_down(location)
    location[0] += 2
    location[1] += 1
    location
  end
end
