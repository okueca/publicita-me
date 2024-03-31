class Post < ApplicationRecord
    enum status: [:pending, :accepted, :posted, :done], _default: :pending
    
    belongs_to :user
    has_one    :payment, dependent: :destroy
    has_many   :post_dates, dependent: :destroy
    has_many   :post_screens, class_name: "PostScreen", dependent: :destroy
    has_one_attached :content

    accepts_nested_attributes_for :post_screens, allow_destroy: true, reject_if: :all_blank 
    
    validates  :title, presence: true
    validates  :content, presence: true
    validates  :user_id, presence: true
    validates :post_screens, presence: true
end