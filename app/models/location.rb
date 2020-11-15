class Location < ApplicationRecord
  belongs_to :listing
  geocoded_by :address
  after_validation :geocode

  def address
    [city, state, country].compact.join(', ')
  end
end