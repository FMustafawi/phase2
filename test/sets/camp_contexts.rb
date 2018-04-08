module Contexts 
    module CampContexts
        
        #### MAKE SURE YOU CREATE CURRICULUMS BEFORE THIS, THEN CHANGE CURRICULUM ID VALUE (LOCATION TOO)
        def create_camps
            @campa = FactoryBot.create(:camp, curriculum_id: 1, location_id: 1, cost: 125.5, start_date: Date.new(2018,5,4), end_date: Date.new(2018,5,30), time_slot: "am", max_students: 50)
            @campb = FactoryBot.create(:camp, curriculum_id: 1, location_id: 2, cost: 125.5, start_date: Date.new(2019,7,4), end_date: Date.new(2019,7,14), time_slot: "pm", max_students: 15, active: false)
            @campc = FactoryBot.create(:camp, curriculum_id: 4, location_id: 2, cost: 125.5, start_date: Date.new(2018,7,14), end_date: Date.new(2018,7,30), time_slot: "pm")
        end  
        
        # def delete_camps
        #     @campa.delete
        #     @campb.delete
        #     @campc.delete
        # end
        
    end
    
end  