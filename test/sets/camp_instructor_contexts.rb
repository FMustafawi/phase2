module Contexts 
    module CampInstructorInstructorContexts
        
        #### MAKE SURE YOU CREATE CURRICULUMS BEFORE THIS, THEN CHANGE CURRICULUM ID VALUE (LOCATION TOO)
        def create_campinstructors
            @ci1 = FactoryBot.create(:camp_instructor, camp_id: 1, instructor_id: 1)
            @ci2 = FactoryBot.create(:camp_instructor, camp_id: 2, instructor_id: 1)
            @ci3 = FactoryBot.create(:camp_instructor, camp_id: 3, instructor_id: 3)
        end  
        
        def destroy_campinstructors
            @ci1.destroy
            @ci2.destroy
            @ci3.destroy
        end
        
    end
    
end  