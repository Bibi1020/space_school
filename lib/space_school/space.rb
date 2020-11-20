
require_relative 'movements'
require_relative 'meteor'
require_relative 'ship'
class Space
  attr_accessor :speed

  def initialize(ship)
    @matrix = matrix
    @meteors = Meteor.generate
    @ship = ship
    @speed = 0
  end

  def matrix
    matrix = []
      (0..9).each do |i|
          matrix[i] = []
          (0..9).each do |j|
              matrix[i][j] = "   "
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
     @meteors += Meteor.generate 
     sustitution_matrix
     Meteor.down(@meteors,@speed)
     blank_space
     sustitution_ship
     show_m
     #verification
  end 
    
  def sustitution_matrix
    @meteors.each do |meteor|
      x = meteor.position[0]
      y = meteor.position[1]
      @matrix[x][y] = meteor.show
    end 
    @matrix
  end

  def blank_space
    @meteors.each do |meteor|
      if meteor.position[0] == 9
      x = meteor.position[0]
      y = meteor.position[1]
      @matrix[x][y] = "   "
      end 
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

def verification
  @matrix.each_index do |i| 
    if @matrix[9][i] == "🌀 " && @matrix[9][i] == "🚀 "
      puts "Perdiste"
      system('clear')
    end
  end
end
