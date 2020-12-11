# frozen_string_literal: true

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
      (0..14).each do |i|
        matrix[i] = []
      (0..6).each do |j|
            matrix[i][j] = '    '
      end
      end
    matrix
  end

  def show_m
    @matrix.each_index do |i|
      @matrix.each_index do |j|
        print @matrix[i][j]
      end
      puts ''
    end
  end

  def oficial_space
    @matrix = matrix
    @meteors += Meteor.generate
    sustitution_matrix
    Meteor.down(@meteors, @speed)
    blank_space
    sustitution_ship
    real_verification
    show_m
  end

  def space_winner
    loop do
      @matrix = matrix
      sustitution_ship
      @ship.up
      show_m
      sleep 0.3
      system('clear')
    break if @ship.position[0].zero?
    end
  end

  def sustitution_matrix
    @meteors.each do |meteor|
      x = meteor.position[0]
      y = meteor.position[1]
      @matrix[x][y] = meteor.show if x <= SpaceSchool::LIMIT
    end
    @matrix
  end

  def blank_space
    @meteors.each do |meteor|
      if meteor.position[0] == SpaceSchool::LIMIT
      x = meteor.position[0]
      y = meteor.position[1]
      @matrix[x][y] = '   '
    end
    @matrix
  end

  def sustitution_ship
    x = @ship.position[0]
    y = @ship.position[1]
    @matrix[x][y] = @ship.show_ship
    @matrix
  end

  # rubocop: disable Layout/LineLength
  def real_verification
    @meteors.each do |meteor|
      if meteor.position[0] == @ship.position[0] && meteor.position[1] == @ship.position[1]
        system('clear')
        raise StopIteration
        puts Rainbow('Queridos familiares de la tripulación, lamentamos informales que sus heroes han fallecido en la importante mision hacia las estrellas. Tenemos pruebas que el piloto lucho por mantener la nave a salvo de un cinturon de asteroides, por el que tuvieron que pasar. Los recordaremos por siempre').red
    end
  end
  # rubocop: enable Layout/LineLength
end
#EOF
