require 'test_helper'

class GameTest < ActiveSupport::TestCase
  should have_many(:tips)
  should belong_to(:competition)
end
