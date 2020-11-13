require_relative 'meteor'

class Space 

    def initialize
        @matrix = matrix
        @meteor = Meteor.new
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
        sustitution_matrix(@matrix)
        Meteor.down(@meteor)
        @matrix.each_index do |i| 
            print @matrix[i] 
            puts ""
        end
    end

    def sustitution_matrix(matrix)
        #@meteor.each_index do |i|
        x = @meteor[0]
        y = @meteor[1]
        matrix[x][y] = meteor.show
        #end
      print @meteor
      puts ""
      matrix
    end
end

