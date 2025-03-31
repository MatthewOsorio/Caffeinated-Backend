class User < ApplicationRecord
  has_secure_password

  has_many :shop_reviews
  has_many :coffee_reviews

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
end
