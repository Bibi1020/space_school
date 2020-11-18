module Movements
    
  def right
   self.position[1] += 1
  end
      
    
  def left
    self.position[1] -= 1
  end

  def down
    self.position[0] += 1 
  end

end