class AddPictureToBeers < ActiveRecord::Migration[5.1]
  def change
    add_column :beers, :picture, :string
  end
end
