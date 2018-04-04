json.extract! place, :id, :title, :description, :rating, :comment, :created_at, :updated_at, :latitude, :longitude
json.url place_url(place, format: :json)
