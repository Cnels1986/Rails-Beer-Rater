class Beer < ApplicationRecord
  belongs_to :breweries
  belongs_to :locations
end
