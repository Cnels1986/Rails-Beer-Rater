class AddLocationAndPicutureToCheckin < ActiveRecord::Migration[5.1]
  def change
    add_reference :checkins, :location, foreign_key: true
    add_column :checkins, :picture, :string
  end
end
