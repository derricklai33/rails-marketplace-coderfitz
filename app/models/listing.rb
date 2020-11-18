class Listing < ApplicationRecord
  # Includes Searchable module for searching function
  include Searchable

  # Associations for model
  belongs_to :user
  has_one :location
  has_many :order
  has_many_attached :images
  accepts_nested_attributes_for :location

  # Enums on model attributes
  enum category: { apparel: 0, sneaker: 1 }
  enum size: { US5: 0, US6: 1, US7: 2, US8: 3, US9: 4, US10: 5, US11: 6, US12: 7, US13: 8, XXS: 9, XS: 10, S: 11, M: 12, L: 13, XL: 14, XXL: 15 }
  enum brand: { Jordan:0, Adidas: 1, Supreme: 2, FEAR_OF_GOD: 3}

  # Scope for searching
  scope :search_by_title, -> (title) { where('title ILIKE?', "%#{title}%") }
  scope :search_by_size, -> (size) { Listing.where(size: size) }
  
  # Validations
  # As options are from javascript, they are perdefined and will be present or not only
  validates :title, presence: true
  validates :category, presence: true
  validates :size, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }
  validates :images, presence: true

  # Model methods
  def product_sold
    self.sold = true
  end

  def stripe_price
    self.price.to_i * 100
  end
end
