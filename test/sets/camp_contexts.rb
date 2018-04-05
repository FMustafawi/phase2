module Contexts 
    module CampContexts
        
        #### MAKE SURE YOU CREATE CURRICULUMS BEFORE THIS, THEN CHANGE CURRICULUM ID VALUE (LOCATION TOO)
        def create_camps
            @campa = FactoryBot.create(:camp, name: "Camp A", curriculum_id: 1, location_id: 1, cost: 125.5, start_date 2018-07-14, end_date: 2018-07-30, time_slot: "am", max_students: 50)
            @campb = FactoryBot.create(:camp, name: "Camp B", curriculum_id: 1, location_id: 1, cost: 125.5, start_date 2017-07-14, end_date: 2017-07-30, time_slot: "pm", max_students: 15, active: false)
            @campc = FactoryBot.create(:camp, name: "Camp C", curriculum_id: 1, location_id: 1, cost: 125.5, start_date 2019-07-14, end_date: 2019-07-30, time_slot: "pm")
        end  
        
        def destroy_camps
            @campa.destroy
            @campb.destroy
            @campc.destroy
        end
        
    end
    
end  