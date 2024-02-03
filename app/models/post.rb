class Post < ApplicationRecord
    belongs_to :user
    has_one    :payment, dependent: :destroy
    has_many   :post_dates, dependent: :destroy
    has_many   :screen_posts, class_name: "ScrennPost", dependent: :destroy
    has_one_attached :content
    enum status: [:pending, :accepted, :posted, :done], _default: :pending
    validates  :title, presence: true
    validates  :content, presence: true
    validates  :user_id, presence: true
    validates  :content_type, presence: true
end
