class RemoveUserIdFromBeers < ActiveRecord::Migration[5.1]
  def change
    remove_column :beers, :user_id, :integer
  end
end
