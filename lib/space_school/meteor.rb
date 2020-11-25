require_relative 'movements'

class Meteor

  attr_accessor :position

  include Movements

  def self.generate
    set = []

    1.times do
      found = true
      while found do
        meteorite = Meteor.new
        found = false

        set.each do |elem|
          if elem.position == meteorite.position
            found = true
          end
        end

        if found == false
          set << meteorite
        end
      end
    end
    set
  end

  def self.down(set,speed)

    set.each do |elem|
      elem.down(speed) if elem.position[0] < SpaceSchool::LIMIT
    end
  end

  def initialize
    @shape = "🌀 "
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