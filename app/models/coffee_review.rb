class CoffeeReview < ApplicationRecord
  belongs_to :user

  validates :shop_name, presence: true
  validates :coffee_name, presence: true
  validates :aroma, presence: true
  validates :taste, presence: true
  validates :acidity, presence: true
  validates :aftertaste, presence: true
  validates :notes, presence: true
end
