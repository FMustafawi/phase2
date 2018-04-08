class Location < ApplicationRecord
    has_many :camps
    validates :name, presence: true, confirmation: { case_sensitive: false }, uniqueness: true
    validates :street_1, presence: true
    validates :zip, presence: true, length: { is: 5 }, format: { with: /\d{5}/, message: "has to be 5 digits"}
    validates :max_capacity, presence: true, numericality: { greater_than_or_equal_to: 1, only_integer: true }
    
    scope :active, -> { where('active = ?', true) }
    scope :inactive, -> { where('active = ?', false) }
    scope :alphabetical, -> { order('name') }
    
end

