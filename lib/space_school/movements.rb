

module Movements
    
  def right
   self.position[1] += 1
  end
      
    
  def left
    self.position[1] -= 1
  end


  def down(speed = 1)

    self.position[0] += speed  

  end



end