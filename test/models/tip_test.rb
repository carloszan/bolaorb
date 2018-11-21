require 'test_helper'

class TipTest < ActiveSupport::TestCase
  should belong_to(:game)
  should belong_to(:user)
end
