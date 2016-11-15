class Equipment < ApplicationRecord
  belongs_to :user
  has_many :users, through: :bookings
  has_attachments :pictures
end
