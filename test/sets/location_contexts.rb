module Contexts 
    module InstructorContexts
        
        #### MAKE SURE YOU CREATE CURRICULUMS BEFORE THIS, THEN CHANGE CURRICULUM ID VALUE (LOCATION TOO)
        def create_instructors
            @i1 = FactoryBot.create(:instructor, first_name: "Fatima", last_name: "Mustafawi", email: "famustaf@andrew.cmu.edu", phone: "12345678")
            @i2 = FactoryBot.create(:instructor, first_name: "Noor", last_name: "Aldahneem", "ndahneem@andrew.cmu.edu", phone: "34567896")
            @i3 = FactoryBot.create(:instructor, first_name: "Maaruf", last_name: "Zakaria", bio: "Pretty good at chess", "mzakaria@andrew.cmu.edu", phone: "55664438")
        end  
        
        def destroy_instructors
            @i1.destroy
            @i2.destroy
            @i3.destroy
        end
        
    end
    
end  