module Contexts 
    module LocationContexts
        
        def create_locations
            @l1 = FactoryBot.create(:location, name: "CMU", street_1: "5001 Forbes Ave", street_2: "224 Suite", city: "Pittsburgh", state: "PA", zip: "15213", max_capacity: 100)
            @l2 = FactoryBot.create(:location, name: "CMU-Q", street_1: "Al-Luqta", street_2: "Education City", city: "AlRayan", state: "QA", zip: "00974", max_capacity: 20)
            @l3 = FactoryBot.create(:location, name: "C Bing", street_1: "15 Yemen Road", city: "Yemen", state: "YE", zip: "12345", max_capacity: 90, active: false)
        end  
        
        # def delete_locations
        #     @l1.delete
        #     @l2.delete
        #     @l3.delete
        # end
        
    end
    
end  