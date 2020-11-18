require_relative 'movements'

class Ship
 
  attr_accessor :position
  include Movements
  
  def self.start
    Ship.new
  end

  def initialize 
    @position = [9,5] 
    @shape = "00" 
  end 
    
  def show_ship 
    @shape 
  end

end
    