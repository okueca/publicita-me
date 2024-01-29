class PostDate < ApplicationRecord
    belongs_to :post
    validates  :post_id, presence: true
    validates  :date, presence: true
    validate   :frequency, presence: true
end
