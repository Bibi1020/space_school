require_relative 'meteor'

class Space 

    def initialize
        @matrix = sustitution_matrix(matrix)
        @meteor = Meteor.new.generate
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

    def show_m
        Meteor.down(@meteor)
        @matrix.each_index do |i| 
            print @matrix[i] 
            puts ""
        end
        @matrix
    end

    def sustitution_matrix(matrix)
      @meteor.each do |i|
        x = meteor.position[0]
        y = meteor.position[1]
        matrix[x][y] = Meteor.show
      end
      matrix
    end
end

