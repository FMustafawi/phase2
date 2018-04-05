require 'test_helper'

class LocationTest < ActiveSupport::TestCase
  # relationships
  should have_many(:camps)
end
