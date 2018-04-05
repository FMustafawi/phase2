class Instructor < ApplicationRecord
    has_many :camps, through: :camp_instructors
end
