class CreateBeers < ActiveRecord::Migration[5.1]
  def change
    create_table :beers do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.references :brewery, foreign_key: true
      t.references :location, foreign_key: true
      t.string :beer_type
      t.integer :rating

      t.timestamps
    end
  end
end
