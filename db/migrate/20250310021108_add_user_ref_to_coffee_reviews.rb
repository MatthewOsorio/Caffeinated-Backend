class AddUserRefToCoffeeReviews < ActiveRecord::Migration[8.0]
  def change
    add_reference :coffee_reviews, :user, null: false, foreign_key: true
  end
end
