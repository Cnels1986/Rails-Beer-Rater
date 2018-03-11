class Location < ApplicationRecord
  has_many :checkins

  before_save :downcase_name
  validates :name, uniqueness: {case_sensitive: false},  length: {maximum: 50}

  private

    def downcase_name
      self.name = name.downcase
    end
end
