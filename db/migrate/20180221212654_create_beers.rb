class CreateBeers < ActiveRecord::Migration[5.1]
  def change
    create_table :beers do |t|
      t.integer :user_id
      t.string :name
      t.references :breweries, foreign_key: true
      t.references :locations, foreign_key: true
      t.string :beer_type
      t.integer :rating

      t.timestamps
    end
  end
end
