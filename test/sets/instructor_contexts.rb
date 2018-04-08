module Contexts 
    module InstructorContexts
        
        def create_instructors
            @i1 = FactoryBot.create(:instructor, first_name: "Fatima", last_name: "Mustafawi", email: "famustaf@andrew.cmu.edu", phone: "1234567890")
            @i2 = FactoryBot.create(:instructor, first_name: "Noor", last_name: "Aldahneem", email: "ndahneem@andrew.cmu.edu", bio: 'very good at chess', phone: "3456789600", active: false)
            @i3 = FactoryBot.create(:instructor, first_name: "Maaruf", last_name: "Zakaria", bio: 'Pretty good at chess', email: "mzakaria@andrew.cmu.edu", phone: "5566443800")
        end  
        
        # def delete_instructors
        #     @i1.delete
        #     @i2.delete
        #     @i3.delete
        # end
        
    end
    
end  