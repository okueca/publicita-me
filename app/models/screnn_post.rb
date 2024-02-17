class ScrennPost < ApplicationRecord
    belongs_to :screen
    belongs_to :post
    validates  :screen_id, presence: true
    validates  :post_id, presence: true
end
