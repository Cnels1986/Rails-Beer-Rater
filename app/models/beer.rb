class Beer < ApplicationRecord
  belongs_to :user
  belongs_to :brewery
  belongs_to :location
  validates :name, presence: true
  validates :rating, presence: true
  validates_inclusion_of :rating, :in => 1..5
end
