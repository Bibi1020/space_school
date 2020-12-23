# frozen_string_literal: true

RSpec.describe Space do
  before do
      @space = Space.new(Ship.new)
  end

  it 'when generate meteors replace in matrix' do
    @space.sustitution_matrix

    expect(@space.sustitution_matrix).not_to eql(@space.matrix)
  end

  it 'when a meteor in position[0] is 14, replace for blank space' do
    (SpaceSchool::LIMIT).times { Meteor.down(@space.meteors, 1) }
    @space.blank_space
    line = ['    ', '    ', '    ', '    ', '    ', '    ', '    ']

    expect(@space.matrix[13]).to be == (line)
  end

  it 'replace ship in matrix' do
    @space.sustitution_ship

    expect(@space.sustitution_ship[12][3]).to be == (@space.ship.shape)
  end

  it 'verify that meteor and ship are not in the same position' do
    meteor = Meteor.down(@space.meteors, 1)
    14.times { meteor }
    position_ship = @space.ship.position
    position_meteor = meteor.first.position

    expect(position_ship).not_to eql(position_meteor)
  end

  it 'if there is a winner ship up' do
    12.times { @space.ship.up }

    expect(@space.ship.position[0]).to be == 0
  end
end
