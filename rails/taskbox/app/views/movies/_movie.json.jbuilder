json.extract! movie, :id, :name, :summary, :rating, :date_watched, :image_url, :created_at, :updated_at
json.url movie_url(movie, format: :json)