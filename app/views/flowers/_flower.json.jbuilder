json.extract! flower, :id, :image, :name, :scientific_name, :flower_type, :blooming, :color, :description, :created_at, :updated_at
json.url flower_url(flower, format: :json)
