require_relative 'movements'

class Ship

  attr_accessor :position
  include Movements

  def initialize
    @position = [12,3]
    @shape = "  🚀 "
  end

  def show_ship
    @shape
  end

end
