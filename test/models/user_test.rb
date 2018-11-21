require 'test_helper'

class UserTest < ActiveSupport::TestCase
  should have_many(:tips)
  should have_one(:ranking)
end
