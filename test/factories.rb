FactoryBot.define do
  
  # TODO: fill in factory blueprint for location
  factory :location do
    name "CMU"
    street_1 "5001 Forbes Ave"
    street_2 "Suite 224"
    city "Pittsburgh"
    state "PA"
    zip "15213"
    max_capacity 10
  end
  
  factory :instructor do
    first_name "Fatima"
    last_name "Mustafawi"
    bio "Fatima is currently among the top people in here"
    email "famustaf@andrew.cmu.edu"
    phone "3000666222"
    active true
  end
  
  factory :curriculum do
    name "Curriculum A"
    min_rating 700
    max_rating 1500
    description "loleritoz"
  end
  
  factory :camp do
    curriculum_id 1
    location_id 1
    cost 125.5
    start_date Date.new(2018,7,14)
    end_date Date.new(2018,07,30)
    time_slot "am"
    max_students 5
    active true
  end
  
  factory :camp_instructor do
    camp_id 1
    instructor_id 1
  end


end