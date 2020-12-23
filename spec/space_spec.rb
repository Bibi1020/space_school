# frozen_string_literal: true

RSpec.describe Space do
  before do
    @space = Space.new(Ship.new)
  end

  it 'when generate meteors replace in matrix' do
    # meteors_position =  @space.meteors.map { |meteor| meteor.position }
    # @space.sustitution_matrix
    # array_true = []
    # @space.matrix.each_index do |position, ind|
    #   shape =
    #   array_true << (position == )

    # end

    # value = @space.matrix[position_meteor[0]][position_meteor[1]]

    # expect(value).to eql(@space.meteors.first.shape)

    # Solucion

    meteor_positions = @space.meteors.map { |meteor| meteor.position }
    @space.sustitution_matrix
    array_of_true = []
    meteor_positions.each_with_index do |position, index|
      array_of_true << (@space.meteors[index].shape == @space.matrix[position[0]][position[1]])
    end
    expect(array_of_true).to all be(true)
  end

  it 'when a meteor in position[0] is 14, replace for blank space' do
    (SpaceSchool::LIMIT).times { Meteor.down(@space.meteors, 1) }
    @space.blank_space
    line = ['    ', '    ', '    ', '    ', '    ', '    ', '    ']

    expect(@space.matrix[13]).to be == (line)
  end

  it 'replace ship in matrix' do
    @space.sustitution_ship
    position_ship = @space.ship.position

    expect(@space.matrix[position_ship[0]][position_ship[1]]).to be == (@space.ship.shape)
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
