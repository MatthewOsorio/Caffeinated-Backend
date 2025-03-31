class CreateShopReviews < ActiveRecord::Migration[8.0]
  def change
    create_table :shop_reviews do |t|
      t.integer :rating
      t.string :review
      t.boolean :recommend

      t.timestamps
    end
  end
end
