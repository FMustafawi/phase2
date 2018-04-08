require 'test_helper'

class CampTest < ActiveSupport::TestCase
  should validate_presence_of(:curriculum)
  should validate_presence_of(:location)
  should validate_presence_of(:curriculum_id)
  should validate_presence_of(:location_id)
  should validate_presence_of(:start_date)
  should validate_presence_of(:end_date)
  should validate_presence_of(:time_slot)
  should belong_to(:curriculum)
  should belong_to(:location)
  should have_many(:camp_instructors)
  should have_many(:instructors).through(:camp_instructors)
  should validate_uniqueness_of(:start_date)#.scoped_to([:location, :time_slot])
  
  # should allow_value(1).for(:location_id)
  # should_not allow_value(-1).for(:location_id)
  # should_not allow_value(10).for(:location_id)
  # should_not allow_value(3).for(:location_id)
  
  should allow_value("am").for(:time_slot)
  should allow_value("pm").for(:time_slot)
  should_not allow_value("ams").for(:time_slot)
  should_not allow_value("pme").for(:time_slot)
  should_not allow_value("a").for(:time_slot)

  # should allow_value(Date.today).for(:start_date)
  # should allow_value(Date.tomorrow).for(:start_date)
  # should_not allow_value(Date.yesterday).for(:start_date)
  
  context "Creating a camp context" do
    setup do
      create_curriculums
      create_locations
      create_camps
      create_instructors
      create_camp_instructors
      
    end
    
    
    should "have a scope to alphabeticize camps" do
      assert_equal ["Curriculum A", "Curriculum A", "Curriculum D"], Camp.alphabetical.map{|t| t.name}
    end
  
    should "have name method returns associated curriculum name" do
      assert_equal "Curriculum A", @campa.name
      assert_equal "Curriculum A", @campb.name
      assert_equal "Curriculum D", @campc.name
    end
    
    should "have a scope to select only active camps" do
      assert_equal ["Curriculum A", "Curriculum D"], Camp.active.alphabetical.map{|t| t.name}
    end

    should "have a scope to select only inactive camps" do
      assert_equal ["Curriculum A"], Camp.inactive.alphabetical.map{|t| t.name}
    end
    
    should "have a scope to sort in chronological order by  start_date the end_date" do
      assert_equal ["Curriculum A", "Curriculum D", "Curriculum A"], Camp.chronological.map{|t| t.name}
    end
    
    should "have a scope to return morning camps" do
      assert_equal ["Curriculum A"], Camp.morning.alphabetical.map{|t| t.name}
    end
    
    should "have a scope to return afternoon camps" do
      assert_equal ["Curriculum A", "Curriculum D"], Camp.afternoon.alphabetical.map{|t| t.name}
    end
    
    should "have a scope to return upcoming camps" do
      assert_equal ["Curriculum A","Curriculum A", "Curriculum D"], Camp.upcoming.alphabetical.map{|t| t.name}
    end


    should "have a scope to return past camps" do
      assert_equal [], Camp.past.alphabetical.map{|t| t.name} #currently none are in the past
    end   
    
    should "have a scope to return camps with specific curriculum" do
      assert_equal ["Curriculum A", "Curriculum A"], Camp.for_curriculum(1).alphabetical.map{|t| t.name}
    end
  
  end
end