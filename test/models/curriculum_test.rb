require 'test_helper'

class CurriculumTest < ActiveSupport::TestCase
 # relationships 
  should have_many(:camps)
  should allow_value("Camp 1").for(:name)
  should allow_value(10).for(:min_rating)
  should allow_value(10).for(:max_rating)
  should_not allow_value(-1).for(:min_rating)
  should_not allow_value(3001).for(:max_rating)
  should_not allow_value("bad").for(:min_rating)
  should_not allow_value("bad").for(:max_rating)
  
  
  context "Creating a curriculum context" do
    setup do
      create_curriculums
    end

    # teardown do
    #   delete_curriculums
    # end
   
  
  ## active scope 
  should "have a scope to select only active Curriculums" do
      assert_equal ["Curriculum A", "Curriculum C","Curriculum D", "Curriculum E"], Curriculum.active.alphabetical.map{|t| t.name}
  end
  
  
  should "have a scope to alphabeticize Curriculums" do
      assert_equal ["Curriculum A", "Curriculum B", "Curriculum C","Curriculum D", "Curriculum E"], Curriculum.alphabetical.all.map(&:name),  "#{Curriculum.class}"
  end
  
  
  # inactive  scope 
  should "have a scope to select only inactive Curriculums" do
      assert_equal ["Curriculum B"], Curriculum.inactive.alphabetical.map{|t| t.name}
  end
  
  should "have a scope to return curriculums with specific ratings" do
      assert_equal ["Curriculum B","Curriculum D", "Curriculum E"], Curriculum.for_rating(2000).alphabetical.map{|t| t.name}
  end
  

 
  end
end
