class ScreenPrice < ApplicationRecord
    belongs_to :screen
    validates  :screen, presence: true
end
