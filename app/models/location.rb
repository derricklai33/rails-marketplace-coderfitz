class Location < ApplicationRecord
  # Associations
  belongs_to :listing
  geocoded_by :address
  after_validation :geocode

  # Validation
  validates :city, presence: true
  validates :state, presence: true
  validates :country, presence: true

  def address
    [city, state, country].compact.join(', ')
  end
end
