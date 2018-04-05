require 'test_helper'

class CurriculumTest < ActiveSupport::TestCase
  # relationships 
  # should have_many(:camps)
  # should allow_value("Camp 1").for(:name)
  # should_not allow_value(1).for(:name)
  # should allow_value(10).for(:min_rating)
  # should allow_value(10).for(:max_rating)
  # should_not allow_value(-1).for(:min_rating)
  # should_not allow_value(3001).for(:max_rating)
  # should_not allow_value("bad").for(:min_rating)
  # should_not allow_value("bad").for(:max_rating)
  
  ## active scope 
  should "have a scope to select only alphabetical Curriculums" do
      assert_equal ["Curriculum A", "Curriculum B"], Curriculum.alphabetical.all.map(&:name),  "#{Curriculum.class}"
  end
  
  
  ## inactive  scope 
  # should "have a scope to select only inactive Curriculums" do
  #     assert_equal ["Curriculum b"], Curriculum.inactive.alphabetical.map{|t| t.name}
  # end
  
  # ## alpha scope
  # should "have a scope to alphabetize Curriculums" do
  #     assert_equal["Curriculum a", "Curriculum b", "Curriculum c"], Curriculum.alphabetical.map{|c| c.name}
  # end  
  ## Scope for_rating
end

