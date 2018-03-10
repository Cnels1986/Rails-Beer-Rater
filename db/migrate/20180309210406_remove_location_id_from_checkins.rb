class RemoveLocationIdFromCheckins < ActiveRecord::Migration[5.1]
  def change
    remove_column :checkins, :location_id, :integer
  end
end
