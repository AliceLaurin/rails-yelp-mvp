class RemoveReviewToRestaurants < ActiveRecord::Migration[7.1]
  def change
    remove_column :restaurants, :reviews, :integer
  end
end
