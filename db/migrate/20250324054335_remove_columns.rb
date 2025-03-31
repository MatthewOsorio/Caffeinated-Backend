class RemoveColumns < ActiveRecord::Migration[8.0]
  def self.up
    remove_column :shop_reviews, :shop_name
  end

  def self.down
    add_column :shop_reviews, :shop_id, :string
  end
end
