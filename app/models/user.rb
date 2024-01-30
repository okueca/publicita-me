class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  before_save {self.email = email.downcase}
  devise    :database_authenticatable, :registerable,
            :recoverable, :rememberable, :validatable
  validates :username, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }
  validates :country, presence: true
  validates :role, presence: true
  enum role: [:admin, :user], validate: true 
  has_many  :posts, class_name: "post", foreign_key: "user_id", dependent: :destroy
  has_many  :payments, class_name: "payment", foreign_key: "user_id", dependent: :destroy
  
end
