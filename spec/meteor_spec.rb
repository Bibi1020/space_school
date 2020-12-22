# frozen_string_literal: true

RSpec.describe Meteor do
  context '#Meteor.down' do
    before do
      @meteors = [Meteor.new, Meteor.new, Meteor.new]
    end

    it 'Receive meteor collection and return the same collection' do
      meteors_after_down = Meteor.down(@meteors, 1)
      expect(meteors_after_down).to be(@meteors)
    end

    it 'call down method for each element in the collection' do
      meteors_inicial_position =  @meteors.map { |meteor| meteor.position[0] }
      Meteor.down(@meteors, 1)
      meteors_final_position =  @meteors.map { |meteor| meteor.position[0] }

      array_of_true = []
      meteors_inicial_position.each_with_index do |position, index|
        array_of_true << (position < meteors_final_position[index])
      end
      expect(array_of_true).to all be(true)
    end

    it 'validate the space limit' do
      (SpaceSchool::LIMIT + 1).times { Meteor.down(@meteors, 1) }

      expect(@meteors.first.position[0]).to be <= (SpaceSchool::LIMIT)
    end
  end

  it '#down' do
    meteor = Meteor.new
    expect(meteor.position[0]).to be < (meteor.down.position[0])
  end
end
