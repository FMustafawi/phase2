class Camp < ApplicationRecord
    
    belongs_to :curriculum
    belongs_to :location
    has_many :camp_instructors 
    has_many :instructors, through: :camp_instructors
    validates :curriculum_id, presence: true
    validates :location_id, presence: true
    validates :curriculum, presence: true
    validates :location, presence: true
    validates :start_date, presence: true
    validates :end_date, presence: true
    validates :time_slot, presence: true,  format: { with: /^(a|p)m$/, message: "has to be am or pm", :multiline => true}
    validates :cost, presence: true, numericality: true
    validates :start_date, uniqueness: {scope: [:location, :time_slot]}
    validate :curriculum_exists_and_active
    validates :max_students, numericality: { greater_than_or_equal_to: 1, only_integer: true }
    validate :camp_cap_does_not_exceed_location
    
    #validate :start_date_cannot_be_in_the_past
    #validate :end_date_cannot_be_before_start

    # def start_date_cannot_be_in_the_past
    #     errors.add(:start_date, "can't be in the past") if
    #     start_date < Date.today
    # end
    
    # def end_date_cannot_be_before_start
    #     errors.add(:end_date, "can't be before  start") if
    #     end_date < start_date
    # end
    
    def curriculum_exists_and_active
        if self.curriculum != nil
            errors.add(:curriculum_id, "curriculum has to be active") if
            self.curriculum.active == false
        else 
            errors.add(:curriculum_id, "curriculum does not exist")
        end 
    end 
    
    def camp_cap_does_not_exceed_location
        if self.location != nil
            errors.add(:max_students, "camp capacity exceeds location capacity") if
            self.location.max_capacity < max_students
        end
    end
    
    def name
        "#{self.curriculum.name}"
    end
    
    scope :active, -> { where(:active => true) }
    scope :inactive, -> { where(:active => false) }
    scope :alphabetical, -> { joins(:curriculum).order('name') }
    scope :chronological, -> {order('start_date', 'end_date')}
    scope :morning, -> { where('time_slot = ?', 'am') }
    scope :afternoon, -> { where('time_slot = ?', 'pm') }
    scope :upcoming, ->  { where('start_date >= ?', Date.today) }
    scope :past, ->  { where('end_date < ?', Date.today) }
    scope :for_curriculum, -> (curriculum_id){ where 'curriculum_id = ?', curriculum_id}
    
    
    
end