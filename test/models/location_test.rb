require 'test_helper'

class LocationTest < ActiveSupport::TestCase
  # relationships
  should have_many(:camps)
  should allow_value("Location 1").for(:name)
  should allow_value(1).for(:max_capacity)
  should allow_value(10).for(:max_capacity)
  should_not allow_value(0).for(:max_capacity)
  should_not allow_value(1.6).for(:max_capacity)
  should_not allow_value("bad").for(:zip)
  should_not allow_value("988").for(:zip)
  should_not allow_value("983338").for(:zip)
  should_not allow_value("98e338").for(:zip)
  should allow_value("00999").for(:zip)
  

  context "Creating a location context" do
    setup do
      create_locations
    end
    
    # teardown do
    #   create_locations
    # end
  
      ## active scope 
  should "have a scope to select only active locations" do
      assert_equal ["CMU", "CMU-Q"], Location.active.alphabetical.map{|t| t.name}
  end
  
  
  should "have a scope to alphabeticize locations" do
      assert_equal ["C Bing", "CMU", "CMU-Q"], Location.alphabetical.all.map(&:name),  "#{Location.class}"
  end
  
  
  # inactive  scope 
  should "have a scope to select only inactive locations" do
      assert_equal ["C Bing"], Location.inactive.alphabetical.map{|t| t.name}
  end
  
  end
end