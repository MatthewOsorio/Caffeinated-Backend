class RenameAciditiyToAcidity < ActiveRecord::Migration[8.0]
  def change
    rename_column :coffee_reviews, :aciditiy, :acidity
  end
end
