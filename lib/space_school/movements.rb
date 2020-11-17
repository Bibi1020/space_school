module Movements
    
    def right
      x = 9
      self.position[x][1] += 1

    end
      
    
    def left
     x = 9
     self.position[x][1] -= 1

    end

  def down
    self.position[0] += 1
  end

end