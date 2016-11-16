class Equipment < ApplicationRecord
  belongs_to :user
  has_many :users, through: :bookings
  has_attachments :pictures
  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  scope :search_by_location, ->(address) { where(Venue.near(address, 20)) }
end


