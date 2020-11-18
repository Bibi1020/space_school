require_relative 'movements'
require_relative 'meteor'
require_relative 'ship'
class Space 

  def initialize(ship)
    @matrix = matrix
    @meteors = Meteor.generate
    @ship = ship
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
    @matrix.each_index do |i| 
    print @matrix[i] 
    puts ""
    end 
  end
  

  def oficial_space 
    @matrix = matrix 
     #print @meteors
     @meteors += Meteor.generate 
     sustitution_ship
     sustitution_matrix
     Meteor.down(@meteors)
     show_m
  end 
    


  def sustitution_matrix
    
    @meteors.each do |meteor|
      x = meteor.position[0]
      y = meteor.position[1]
      @matrix[x][y] = meteor.show
  end 

    @matrix
  end

  def sustitution_ship
    x = @ship.position[0]
    y = @ship.position[1]
    @matrix[x][y] = @ship.show_ship
    @matrix
  end

end

