class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  mount_uploader :photo, PhotoUploader
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings
  has_many :bunkers
  has_many :owned_bunkers_bookings, through: :bunkers, source: :bookings
  validates :first_name, presence: true
  validates :last_name, presence: true
end
