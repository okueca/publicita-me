json.extract! post, :id, :title, :user_id, :status, :created_at, :updated_at
json.url post_url(post, format: :json)
