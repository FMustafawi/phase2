module Contexts 
    module CampInstructorContexts
        
        #### MAKE SURE YOU CREATE CURRICULUMS BEFORE THIS, THEN CHANGE CURRICULUM ID VALUE (LOCATION TOO)
        def create_camp_instructors
            @ci1 = FactoryBot.create(:camp_instructor, camp_id: 1, instructor_id: 1)
            @ci2 = FactoryBot.create(:camp_instructor, camp_id: 1, instructor_id: 3)
            @ci3 = FactoryBot.create(:camp_instructor, camp_id: 3, instructor_id: 3)
        end  
        
        def delete_camp_instructors
            @ci1.delete
            @ci2.delete
            @ci3.delete
        end
        
    end
    
end  