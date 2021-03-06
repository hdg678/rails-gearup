class Equipment < ApplicationRecord
  CATEGORIES = ["Cycling","Ball sports","Catch sports","Winter sports","Water sports","Archery","Board sports","Climbing","Cue sports","Fishing","Combat sports","Gymnastics","Sailing","Trekking","Motorized sports","Golf"].sort

  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews
  has_many :users, through: :bookings
  has_attachments :pictures
  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  scope :category, -> (category) { where category: category }

  validates :address, presence: true


  def self.search(params)
    results = all.within_address(params[:address])
    results = results.with_category(params[:category])

    results
  end

  def self.within_address(address)
    address.present? ? near(address, 30) : all
  end

  def self.with_category(category)
    category.present? ? category(category) : all
  end

  def average_stars
    @review = self.reviews
    if @review.count != 0
      sum = @review.inject(0){|sum,review| sum + review.number }
      @average = sum / @review.length
    else
      0
    end
  end
end


