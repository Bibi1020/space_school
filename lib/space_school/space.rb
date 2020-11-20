require_relative 'movements'
require_relative 'meteor'
require_relative 'ship'
class Space
  attr_accessor :speed

  def initialize
    @matrix = matrix
    @meteors = Meteor.generate
    @speed = 0
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
    end

    matrix
  end

  def show_m
    
    sustitution_ship(@matrix)
    
    sustitution_matrix(@matrix)
    
    #Meteor.down(@meteors)
    @matrix.each_index do |i| 
    print @matrix[i] 
    puts ""
    system ('clear')
    end
    
  end

  def sustitution_matrix(matrix)

    @meteors.each do |meteor|
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
