# frozen_string_literal: true

RSpec.describe Meteor do

  context '#Meteor.down' do
    it 'Receive meteor colection and return the same colection' do
      meteors = [Meteor.new, Meteor.new, Meteor.new]
      meteors_after_down = Meteor.down(meteors, 1)

      expect(meteors_after_down).to be(meteors)
    end

    it 'call down method for each element in the colection' do
      meteors = [Meteor.new, Meteor.new, Meteor.new]
      Meteor.down(meteors, 1)

      expect(meteors_down.position).to be > (meteors.position)
    end

    it 'validate the space limit' do
      meteor = Meteor.new
      meteor_down = Meteor.down(meteor, 17)

      expect(meteor_down[1]).to be <= (SpaceSchool::LIMIT)
    end
  end
end
