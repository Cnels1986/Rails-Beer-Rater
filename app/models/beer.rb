class Beer < ApplicationRecord
  belongs_to :user
  belongs_to :brewery
  belongs_to :location
end
