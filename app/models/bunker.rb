class Bunker < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  has_many :bookings
  validates :name, presence: true
  validates :location, presence: true
  validates :price, presence: true, numericality: { only_float: true }
  validates :description, presence: true
  validates :photo, presence: true
end
