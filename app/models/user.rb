class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts, class_name: "post", foreign_key: "user_id", dependent: :destroy
  has_many :payments, class_name: "payment", foreign_key: "user_id", dependent: :destroy
  
end
