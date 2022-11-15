json.extract! review, :id, :rate, :title, :user_name, :description, :created_at, :updated_at
json.url review_url(review, format: :json)
