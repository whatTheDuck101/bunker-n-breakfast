
STATUS = ["pending", "accepted", "denied"]

class Booking < ApplicationRecord
  mount_uploader :picture, PhotoUploader
  belongs_to :user
  belongs_to :bunker
  validates :status, inclusion: { in: STATUS }
end
