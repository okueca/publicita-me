class Screen < ApplicationRecord
    has_many  :screen_post, dependent: :destroy
    validates :name, presence: true, uniqueness: true
    validates :location, presence: true
    validates :dimensions, presence: true
    validates :stream_price, presence: true
    validates :status, presence: true
    validates :description, presence: true
    enum status: [:active, :inactive], validate: true

end
