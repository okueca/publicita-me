class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  enum role: [:admin, :user], _default: :user
  devise    :database_authenticatable, :registerable,
            :recoverable, :rememberable, :validatable
  validates :username, presence: true
  validates :country, presence: true
  validates :role, presence: true
  has_many  :posts, class_name: "post", foreign_key: "user_id", dependent: :destroy
  has_many  :payments, class_name: "payment", foreign_key: "user_id", dependent: :destroy
  
end
