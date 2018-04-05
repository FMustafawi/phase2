class Camp < ApplicationRecord
    
    belongs_to :curriculum
    belongs_to :location
    has_many :instructors, through: :camp_instructors
    
end
