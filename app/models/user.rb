class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, presence: true, length: { minimum: 3, maximum: 100 }, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 3, maximum: 100 }
end
