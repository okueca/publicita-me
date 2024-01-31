class Payment < ApplicationRecord
    has_one    :post
    belongs_to :user
    validates  :user_id, presence: true
    validates  :post_id, presence: true
    validate   :amount_is_positive
    validates  :amount, presence: true
    validates  :status, presence: true
    enum status: [:inprogress, :complete, :fail]
    validates  :amount, numericality: { greater_than: 0 }
    
end
