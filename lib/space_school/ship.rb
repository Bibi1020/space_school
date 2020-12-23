# frozen_string_literal: true

require_relative 'movements'
class Ship
  include Movements
  attr_accessor :position
  attr_reader :shape

  def initialize
    @position = [12, 3]
    @shape = ' 🚀 '
  end
end
