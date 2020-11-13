require_relative 'movements'

class ship

    include movements
    attr_reader: position

    def initialize 
        
        @position = [10,5]

    end

end