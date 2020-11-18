require_relative 'movements'
require_relative 'meteor'
require_relative 'ship'
class Space 

  def initialize
    @matrix = matrix
    #@meteors = Meteor.generate
    @ship = Ship.new
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
    #@meteors += Meteor.generate
    sustitution_ship(@matrix)
    sustitution_matrix(@matrix)
    #Meteor.down(@meteors)
    system ('clear')

    @matrix.each_index do |i| 
    print @matrix[i] 
    puts ""
    end

  end

  def sustitution_matrix(matrix)
    meteors = Meteor.generate
    meteors.each do |meteor|
      x = meteor.position[0]
      y = meteor.position[1]
      matrix[x][y] = meteor.show
    end 

    matrix
  end

  def sustitution_ship(matrix)
    x = @ship.position[0]
    y = @ship.position[1]
    matrix[x][y] = @ship.show_ship
    matrix
  end

end

