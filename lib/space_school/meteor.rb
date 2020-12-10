# frozen_string_literal: true

require_relative 'movements'

class Meteor
<<<<<<< HEAD
=======
  attr_accessor :position

>>>>>>> main
  include Movements
  attr_accessor :position

  # rubocop: disable Metrics/MethodLength
  def self.generate
    sssset = []

    found = true
    while found
      meteorite = Meteor.new
      found = false

      set.each do |elem|
        found = true if elem.position == meteorite.position
      end

      set << meteorite if found == false
    end
    set
  end
  # rubocop: enable Metrics/MethodLength

  def self.down(set, speed)
    set.each do |elem|
      elem.down(speed) if elem.position[0] < SpaceSchool::LIMIT
    end
  end

  def initialize
<<<<<<< HEAD
    @shape = " 🌀 "
=======
    @shape = '  🌀 '
>>>>>>> main
    @position = [0]
    @position << random_y
  end

  def show
    @shape
  end

  private

  def random_y
    rand(0..6)
  end
end
