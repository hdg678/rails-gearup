class Equipment < ApplicationRecord
  CATEGORIES = ["Cycling","Ball sports","Catch sports","Winter sports","Water sports","Archery","Board sports","Climbing","Cue sports","Fishing","Combat sports","Gymnastics","Sailing","Trekking","Motorized sports","Golf"]

  belongs_to :user
  has_many :users, through: :bookings
  has_attachments :pictures
  geocoded_by :address
  after_validation :geocode, if: :address_changed?

end


