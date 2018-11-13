
STATUS = ["pending", "accepted", "denied"]

class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :bunker
  validates :status, inclusion: { in: STATUS }

  def accept_inclusion!
    self.status = "accepted"
  end

  def deny_inclusion!
    self.status = "denied"
  end
end
