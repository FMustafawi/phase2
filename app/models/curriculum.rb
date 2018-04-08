class Curriculum < ApplicationRecord
    has_many :camps
    validates :name, presence: true, confirmation: { case_sensitive: false }, uniqueness: true
    validates :min_rating, presence: true, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 3000, only_integer: true}
    validates :max_rating, presence: true, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 3000, only_integer: true}
    
    
    scope :active, -> { where('active = ?', true) }
    scope :inactive, -> { where('active = ?', false) }
    scope :alphabetical, -> { order('name') }
    scope :for_rating, -> (rating){ where 'min_rating = ? OR max_rating = ?', rating,  rating}


end
