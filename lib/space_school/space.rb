require_relative 'meteor'

class Space 

    def initialize
        @matrix = matrix
        @meteor = Meteor.generate
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
        @matrix = sustitution_matrix(show)
        Meteor.down(@meteor)
        @matrix.each_index do |i| 
            print @matrix[i] 
            puts ""
        end
        @matrix
    end

    def sustitution_matrix(show)
      @meteor.each do |meteor|
        x = meteor.position[0]
        y = meteor.position[1]
        sustitution[x][y] = Meteor.show
      end
      sustitution
    end
end

