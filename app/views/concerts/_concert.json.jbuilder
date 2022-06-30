json.extract! concert, :id, :concert_date, :audience, :group_type, :group_id, :created_at, :updated_at
json.url concert_url(concert, format: :json)
