class CreateCoffeeReviews < ActiveRecord::Migration[8.0]
  def change
    create_table :coffee_reviews do |t|
      t.string :shop_name
      t.string :coffee_name
      t.integer :aroma
      t.integer :taste
      t.integer :aciditiy
      t.integer :aftertaste
      t.string :notes

      t.timestamps
    end
  end
end
