require './test/sets/curriculum_contexts'

module Contexts
    
    include Contexts::CurriculumContexts
    
    def create_contexts
        
        create_curriculums
        
    end 
    
end 