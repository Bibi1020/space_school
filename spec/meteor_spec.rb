# frozen_string_literal: true

RSpec.describe Meteor do

  context '#Meteor.down' do
    it 'Recibe una colección de meteoritos y retorna la misma colección' do
      meteors = [Meteor.new, Meteor.new, Meteor.new]
      meteors_after_down = Meteor.down(meteors, 1)

      expect(meteors_after_down).to be(meteors)
    end

    it 'llame el método down a cada elemento de la colección' do
    end

    it 'valide el limite del space' do

    end
  end
end
