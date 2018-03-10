class RemoveLocationIdFromBeers < ActiveRecord::Migration[5.1]
  def change
    remove_column :beers, :location_id, :integer
  end
end
