class Space
  attr_accessor :time

    def initialize
        @matrix = matrix
        @time = 0
    end

    def matrix
      matrix = []
        (0..9).each do |i|
            matrix[i] = []
            (0..9).each do |j|
                matrix[i][j] = " - "
            end
        end
       matrix
    end

    def show
        @matrix.each_index do |i|
            print @matrix[i]
            puts ""
        end
        @matrix
    end
end
