class Beer < ApplicationRecord
  belongs_to :user
  belongs_to :brewery
  belongs_to :location
  validates :name, presence: true
  validates :rating, presence: true
  validates :brewery_id, presence: false
  validates :location_id, presence: false
  validates :beer_type, presence: false
end
