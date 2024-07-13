# == Schema Informations
#
#  Table name: users
#
#  Atributes:
#   id
#   usename          :string
#   email            :string
#   phone            :string
#   role             :integer
#   created_at       :datetime
#   updated_at       :datetime
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  enum role: [:admin, :user], _default: :user
  devise    :database_authenticatable, :registerable,
            :recoverable, :rememberable, :validatable
  validates :username, presence: true
  validates :country, presence: true
  validates :role, presence: true
  has_many  :posts, class_name: "Post", foreign_key: "user_id", dependent: :destroy
  has_many  :payments, class_name: "Payment", foreign_key: "user_id", dependent: :destroy
  
end
