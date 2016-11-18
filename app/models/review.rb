class Review < ApplicationRecord
  belongs_to :equipment
  validates :number, presence: true
end
