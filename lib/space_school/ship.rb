require_relative 'movements'

class Ship
 
  attr_accessor :position
  include Movements


  def initialize 
    @position = [7,5] 
    @shape = "🚀 " 
  end 
    
  def show_ship 
    @shape 
  end

end
    