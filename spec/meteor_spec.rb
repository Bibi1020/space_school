# frozen_string_literal: true

RSpec.describe Meteor do

  context '#Meteor.down' do
    it 'Receive meteor colection and return the same colection' do
      meteors = [Meteor.new, Meteor.new, Meteor.new]
      meteors_after_down = Meteor.down(meteors, 1)

      expect(meteors_after_down).to be(meteors)
    end

    it 'call down method for each element in the colection' do
      meteor = Meteor.new
      meteor_inicial_position = meteor.position[0]
      meteor.down

      expect(meteor.down).to be > (meteor_inicial_position)
    end

    it 'validate the space limit' do
      meteor = [Meteor.new, Meteor.new, Meteor.new]
      meteor_down = Meteor.down(meteor, 17)

      expect(SpaceSchool::LIMIT).to be <= (meteor_down[0].position[0])
    end
  end
end
