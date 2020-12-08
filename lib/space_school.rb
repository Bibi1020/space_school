# frozen_string_literal: true

require_relative 'space_school/version'
require 'rainbow'
require_relative 'space_school/welcome'
require_relative 'space_school/game'

module SpaceSchool
  LIMIT = 14
  # class Error < StandardError; end
  # Your code goes here...
end

Welcome.start
Game.start

SpaceSchool::LIMIT
