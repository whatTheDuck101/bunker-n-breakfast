class Bunker < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :location, presence: true
  validates :name, presence: true
  validates :description, presence: true
  validates :picture, presence: true
  validates :price, presence: true, numericality: { only_integer: true }
end
