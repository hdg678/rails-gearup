class User < ApplicationRecord
  has_many :equipments
  has_many :bookings
end
