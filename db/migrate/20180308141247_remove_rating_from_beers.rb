class RemoveRatingFromBeers < ActiveRecord::Migration[5.1]
  def change
    remove_column :beers, :rating, :integer
  end
end
