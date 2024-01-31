class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  before_save {self.email = email.downcase}
  enum role: [:admin, :user]
  devise    :database_authenticatable, :registerable,
            :recoverable, :rememberable, :validatable
  attr_readonly   :role
  validates :username, presence: true
  validates :email, presence: true, uniqueness: true, format: {with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "Invalid email format"}
  validates :password, presence: true, length: { minimum: 6 }, format: {with: /\A(?=.*[a-zA-Z])(?=.*[0-9]).{6,}\z/, message: "Invalid password format"}
  validates :country, presence: true
  validates :role, presence: true
  has_many  :posts, class_name: "post", foreign_key: "user_id", dependent: :destroy
  has_many  :payments, class_name: "payment", foreign_key: "user_id", dependent: :destroy
  
end
