module Contexts
    module CurriculumContexts
        
        def create_curriculums 
            @c1 =  FactoryBot.create(:curriculum, name: "Curriculum A", min_rating: 700, max_rating: 1500, description: "loleritoz", active: true)
            @c2 =  FactoryBot.create(:curriculum, name: "Curriculum B", min_rating: 2000, max_rating: 3000, active: false)
            @c3 =  FactoryBot.create(:curriculum, name: "Curriculum C", min_rating: 100, max_rating: 1000, active: true)
            @c4 =  FactoryBot.create(:curriculum, name: "Curriculum D", min_rating: 100, max_rating: 2000)
            @c5 =  FactoryBot.create(:curriculum, name: "Curriculum E", min_rating: 100, max_rating: 2000)
        end 
        
        # def delete_curriculums 
        #     @c1.delete
        #     @c2.delete
        #     @c3.delete
        # end 
    end  
end