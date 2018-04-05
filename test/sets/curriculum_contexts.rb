module Contexts
    module CurriculumContexts
        
        def create_curriculums 
            @c1 =  FactoryBot.create(:curriculum, name: "Curriculum A", min_rating: 700, max_rating: 1500)
            @c2 =  FactoryBot.create(:curriculum, name: "Curriculum B", min_rating: 300, max_rating: 1000)
            @c3 =  FactoryBot.create(:curriculum, name: "Curriculum C", min_rating: 100, max_rating: 2000)
        end 
        
        def destroy_curriculums 
            @c1.destroy
            @c2.destroy
            @c3.destroy
        end 
end  