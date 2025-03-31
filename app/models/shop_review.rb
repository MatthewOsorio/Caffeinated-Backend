class ShopReview < ApplicationRecord
  belongs_to :user

  validates :rating, presence: true
  validates :review, presence: true
  validates :recommend, inclusion: { in: [ true, false ] }
  validates :shop_id, presence: true
  validates :shop_name, presence: true
end
