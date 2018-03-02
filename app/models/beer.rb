class Beer < ApplicationRecord
  belongs_to :user
  belongs_to :brewery
  accepts_nested_attributes_for :brewery
  belongs_to :location
  validates :name, presence: true
  validates :rating, presence: true
  validates_inclusion_of :rating, :in => 1..5
  default_scope -> { order(created_at: :desc) }
end
