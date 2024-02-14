class PostDate < ApplicationRecord
    belongs_to :post
    validates  :post_id, presence: true
    validates  :date, presence: true
    validates  :frequency, presence: true
end
