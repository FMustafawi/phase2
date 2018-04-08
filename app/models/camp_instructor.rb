class CampInstructor < ApplicationRecord
    belongs_to :camp
    belongs_to :instructor
    validates :camp_id, presence: true 
    validates :instructor_id, presence:  true
    validate :camp_exists_and_active
    validate :instructor_exists_and_active
    validates :camp_id, uniqueness: {scope: :instructor_id}
    
    def camp_exists_and_active
        if self.camp != nil
            errors.add(:camp_id, "camp has to be active") if
            self.camp.active == false
        else 
            errors.add(:camp_id, "camp does not exist")
        end 
    end
    
    def instructor_exists_and_active
        if self.instructor != nil
            errors.add(:instructor_id, "instructor has to be active") if
            self.instructor.active == false
        else 
            errors.add(:instructor_id, "instructor does not exist")
        end 
    end
end
