class Bunker < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  belongs_to :user
  has_many :bookings
  validates :name, presence: true
  validates :address, presence: true
  validates :price, presence: true, numericality: { only_float: true }
  validates :description, presence: true
  # validates :photo, presence: true
end
