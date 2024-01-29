class Post < ApplicationRecord
    belongs_to :user
    has_one    :Payment
    has_many   :post_dates, dependent: :destroy
    has_many   :screen_posts, dependent: :destroy
    validates  :title, presence: true
    validates  :content, presence: true
    validates  :user_id, presence: true
    validates  :content_type, presence: true
    enum content_type: [:video, :image], validate: true 

    
end
