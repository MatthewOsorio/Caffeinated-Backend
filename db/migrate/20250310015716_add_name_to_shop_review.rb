class AddNameToShopReview < ActiveRecord::Migration[8.0]
  def change
    add_column :shop_reviews, :shop_name, :string
  end
end
