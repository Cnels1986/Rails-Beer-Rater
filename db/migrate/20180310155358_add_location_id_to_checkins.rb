class AddLocationIdToCheckins < ActiveRecord::Migration[5.1]
  def change
    add_reference :checkins, :location, foreign_key: true
  end
end
