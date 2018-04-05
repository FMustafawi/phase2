json.extract! location, :id, :name, :street_1, :street_2, :string, :city, :state, :zip, :max_capacity, :active, :created_at, :updated_at
json.url location_url(location, format: :json)
