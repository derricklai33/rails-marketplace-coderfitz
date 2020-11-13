class Listing < ApplicationRecord
  belongs_to :user
  has_one :location
  has_many_attached :images
  accepts_nested_attributes_for :location
  enum category: { apparel: 0, sneaker: 1 }
  enum size: { US5: 0, US6: 1, US7: 2, US8: 3, US9: 4, US10: 5, US11: 6, US12: 7, US13: 8, XXS: 9, XS: 10, S: 11, M: 12, L: 13, XL: 14, XXL: 15 }

  def product_sold
    self.sold = true
  end
end
