class Checkin < ApplicationRecord
  belongs_to :user
  belongs_to :beer
  accepts_nested_attributes_for :beer
  belongs_to :location

  validates :beer_id, presence: true
  validates :rating, presence: true
  validates_inclusion_of :rating, :in => 1..5
  mount_uploader :picture, PictureUploader
  validate  :picture_size

  default_scope -> { order(created_at: :desc) }

  private

    # Validates the size of an uploaded picture.
    def picture_size
      if picture.size > 5.megabytes
        errors.add(:picture, "should be less than 5MB")
      end
    end
end
