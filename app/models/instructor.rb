class Instructor < ApplicationRecord
    has_many :camp_instructors
    has_many :camps, through: :camp_instructors
    validates :first_name, :last_name, presence: true
    validates :email, presence: true, uniqueness: true, confirmation: { case_sensitive: false }
    validates :phone, format: { with: /^\d{10}$/, message: "has to be 10 digits", :multiline => true }

    scope :active, -> { where(:active => true) }
    scope :inactive, -> { where(:active => false) }
    scope :alphabetical, -> { order('first_name, last_name') }
    scope :needs_bio, -> {where(bio: nil)}
    
    
    def name
        "#{last_name}, #{first_name}"
    end
    
    def proper_name
        "#{first_name} #{last_name}"
    end
    
    def for_camp(camp)
        Instructor.joins( :camp_instructors => :camp ).where('camp_id = ?', camp.id) 
    end 
    
    
end
