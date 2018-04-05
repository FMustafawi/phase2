class Location < ApplicationRecord
    has_many :camps
    validates :name, presence: true, confirmation: { case_sensitive: false }, uniqueness: true
    validates :street_1, presence: true
    validates :zip, presence: true
    validates :max_capacity, presence: true, numericality: {greater_than_or_equal_to: 0 only_integer: true}
    
    
end
