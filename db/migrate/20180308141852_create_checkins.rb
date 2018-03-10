class CreateCheckins < ActiveRecord::Migration[5.1]
  def change
    create_table :checkins do |t|
      t.references :user, foreign_key: true
      t.references :beer, foreign_key: true
      t.integer :rating

      t.timestamps
    end
  end
end
