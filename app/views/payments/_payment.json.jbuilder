json.extract! payment, :id, :method, :user_id, :post_id, :amount, :status, :created_at, :updated_at
json.url payment_url(payment, format: :json)
