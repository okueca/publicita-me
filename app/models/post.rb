# == Schema Informations
#
#  Table name: posts
#
#  Atributes:
#   id 
#   title            :string
#   user_id          :reference of user
#   status           :integer
#   content_type     :integer
#   content          :text
#   timeDuration     :float
#   unitDuration     :integer
#   created_at       :datetime
#   updated_at       :datetime
#

class Post < ApplicationRecord
    
    enum status: [:pending, :accepted, :posted, :done], _default: :pending
    enum unitDuration: {
        Months: 0,
        Days: 1,
        Hours: 2,
        Minutes: 3
    }
    
    validates  :title, presence: true
    validates  :user_id, presence: true
    validates :post_screens, presence: true

    belongs_to :user
    has_one    :payment, dependent: :destroy
    has_many   :post_dates, dependent: :destroy
    has_many   :post_screens, class_name: "PostScreen", foreign_key: "post_id", dependent: :destroy
    has_one_attached :content

    accepts_nested_attributes_for :post_screens, allow_destroy: true, reject_if: :all_blank 

end