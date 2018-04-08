require './test/sets/curriculum_contexts'
require './test/sets/instructor_contexts'
require './test/sets/location_contexts'
require './test/sets/camp_contexts'
require './test/sets/camp_instructor_contexts'
module Contexts
    
    include Contexts::CurriculumContexts
    include Contexts::InstructorContexts
    include Contexts::LocationContexts
    include Contexts::CampContexts
    include Contexts::CampInstructorContexts
    
    def create_contexts
        
        create_curriculums
        create_instructors
        create_locations
        create_camps
        create_camp_instructors
        
    end 
    
    # def delete_contexts
        
    #     delete_curriculums
    #     delete_instructors
    #     delete_locations
    #     delete_camps
    #     delete_camp_instructors
        
    # end 
    
end 