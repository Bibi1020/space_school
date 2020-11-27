require_relative 'movements'

class Ship
  include Movements
  attr_accessor :position

  def initialize
    @position = [7, 5]
    @shape = '🚀 '
  end

  def show_ship
    @shape
  end
end