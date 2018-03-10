class Beer < ApplicationRecord
  belongs_to :brewery
  accepts_nested_attributes_for :brewery

  has_many :checkins
  has_many :users, :through => :checkins

  before_save :downcase_name
  validates :name, presence: true, uniqueness: {case_sensitive: false},  length: {maximum: 50}
  validates :brewery_id, presence: true

  default_scope -> { order(created_at: :desc) }


  private

    def downcase_name
      self.name = name.downcase
    end

end
