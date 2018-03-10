class Brewery < ApplicationRecord
  has_many :beers

  before_save :downcase_name
  validates :name, presence: true, uniqueness: {case_sensitive: false},  length: {maximum: 50}

  private

    def downcase_name
      self.name = name.downcase
    end
end
