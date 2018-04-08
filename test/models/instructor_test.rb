require 'test_helper'

class InstructorTest < ActiveSupport::TestCase
  should have_many(:camp_instructors)
  should have_many(:camps).through(:camp_instructors)
  should validate_presence_of(:first_name)
  should validate_presence_of(:last_name)
  should validate_presence_of(:email)
  should validate_uniqueness_of(:email)
  should allow_value("1279304720").for(:phone)
  should_not allow_value("777777").for(:phone)
  should_not allow_value("373929302933").for(:phone)
  
  context "Creating a instructor context" do
    setup do

      create_instructors
      create_locations
      create_curriculums
      create_camps
      create_camp_instructors
      
      

    end
    
    should "have name method returns instuctor name" do
      assert_equal "Mustafawi, Fatima", @i1.name
      assert_equal "Aldahneem, Noor", @i2.name
      assert_equal "Zakaria, Maaruf", @i3.name
    end
    
    should "have name method returns instuctor proper  name" do
      assert_equal "Fatima Mustafawi", @i1.proper_name
      assert_equal "Noor Aldahneem", @i2.proper_name
      assert_equal "Maaruf Zakaria", @i3.proper_name
    end
    
    should "have name method returns instuctors for a specific camp" do
      assert_equal [@i1, @i3], @i1.for_camp(@campa)

    end
  
  should "have a scope to select only active instructors" do
      assert_equal ["Fatima", "Maaruf"], Instructor.active.alphabetical.map{|t| t.first_name}
    end

    should "have a scope to select only inactive instructors" do
      assert_equal ["Noor"], Instructor.inactive.alphabetical.map{|t| t.first_name}
    end
    
    should "have a scope to show instructors who need bios" do
       
      assert_equal ["Fatima"], Instructor.needs_bio.alphabetical.map{|t| t.first_name}
    end
    
    should "have a scope to sort alphabetically" do
      assert_equal ["Fatima", "Maaruf", "Noor"], Instructor.alphabetical.map{|t| t.first_name}
    end
    
    
end

end
