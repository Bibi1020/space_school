module Movements
  def right
    position[1] += 1
  end

  def left
    position[1] -= 1
  end

  def down(speed = 1)
    position[0] += speed
  end

  def up
    position[0] -= 1
  end
end