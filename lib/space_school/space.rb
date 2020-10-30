class Space 

    def Space.show
        space = Space.new 
        space.show_matrix
    end
    
    def initialize
        @matrix = []
    end 

    def matrix 
        (0..64).each do |i| 
            @matrix[i] = []
            (0..64).each do |j|
                @matrix[i][j] = " - "
            end
        end 
        @matrix
    end 

    def show_matrix 
        @matrix.each_index do |i| 
            print @matrix[i] 
            puts ""
        end
    end
end