require_relative 'movements'

class Ship

    attr_accessor :position, :shape

    def initialize 
        @position = [9,5]
        @shape = "00"
    end

    def show_ship
        @shape
    end

end