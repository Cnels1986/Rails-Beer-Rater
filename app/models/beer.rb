class Beer < ApplicationRecord
  belongs_to :user
  belongs_to :brewery
  accepts_nested_attributes_for :brewery
  belongs_to :location
  mount_uploader :picture, PictureUploader
  validates :name, presence: true
  validates :rating, presence: true
  validates_inclusion_of :rating, :in => 1..5
  default_scope -> { order(created_at: :desc) }
  validate  :picture_size

  private

    # Validates the size of an uploaded picture.
    def picture_size
      if picture.size > 5.megabytes
        errors.add(:picture, "should be less than 5MB")
      end
    end
end
