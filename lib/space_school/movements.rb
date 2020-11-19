

module Movements
    
  def right
    x = 9
    self.position[x][1] += 1
  end
      
    
  def left
    x = 9
    self.position[x][1] -= 1
  end


  def down(speed = 1)

    self.position[0] += speed

  end



end