class Booking < ApplicationRecord
  belongs_to :equipment
  belongs_to :user

  validates :pickup, presence: true
  validates :dropoff, presence: true
end
