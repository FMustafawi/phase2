require 'test_helper'

class CampInstructorTest < ActiveSupport::TestCase
  should belong_to(:camp)
  should belong_to(:instructor)
  should validate_presence_of(:camp_id)
  should validate_presence_of(:instructor_id)
  should validate_uniqueness_of(:camp_id).scoped_to(:instructor_id)
  
  
  context "Creating a camp context" do
    setup do
      create_curriculums
      create_locations
      create_camps
      create_instructors
      create_camp_instructors
      
    end
    
  should "validate that camp exists and active" do
  assert_nil nil, @ci1.camp_exists_and_active
  end
  should "validate that instructor exists and active" do
  assert_nil nil, @ci1.instructor_exists_and_active
  end
end
end
