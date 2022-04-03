# frozen_string_literal: true

# Location module that contains methods for moving the knight
module Location
  def left_up_up(location)
    x = location[0]
    y = location[1]
    x -= 1
    y -= 2
    [x, y]
  end

  def left_down_down(location)
    x = location[0]
    y = location[1]
    x -= 1
    y += 2
    [x, y]
  end

  def right_up_up(location)
    x = location[0]
    y = location[1]
    x += 1
    y -= 2
    [x, y]
  end

  def right_down_down(location)
    x = location[0]
    y = location[1]
    x += 1
    y += 2
    [x, y]
  end

  def left_left_up(location)
    x = location[0]
    y = location[1]
    x -= 2
    y -= 1
    [x, y]
  end

  def left_left_down(location)
    x = location[0]
    y = location[1]
    x -= 2
    y += 1
    [x, y]
  end

  def right_right_up(location)
    x = location[0]
    y = location[1]
    x += 2
    y -= 1
    [x, y]
  end

  def right_right_down(location)
    x = location[0]
    y = location[1]
    x += 2
    y += 1
    [x, y]
  end
end
