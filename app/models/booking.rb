
STATUS = ["pending", "accepted", "denied"]

class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :bunker
  validates :status, inclusion: { in: STATUS }
end
