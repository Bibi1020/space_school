# frozen_string_literal: true

module Movements
  def right
    position[1] += 1
    self
  end

  def left
    position[1] -= 1
    self
  end

  def down(speed = 1)
    position[0] += speed
    self
  end

  def up
    position[0] -= 1
    self
  end
end
# EOF
