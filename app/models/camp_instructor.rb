class CampInstructor < ApplicationRecord
    belongs_to :camp
    belongs_to :instructor
end
