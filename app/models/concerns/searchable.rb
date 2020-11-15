module Searchable
  extend ActiveSupport::Concern

  module ClassMethods
    def apparel_search_by(search_params)
      results = self.where(category: 0, sold:0)
      search_params.each do |key, value|
        results = results.public_send("search_by_#{key}", value) if value.present?
      end  
      results
    end

    def sneaker_search_by(search_params)
      results = self.where(category: 1, sold:0)
      search_params.each do |key, value|
        results = results.public_send("search_by_#{key}", value) if value.present?
      end  
      results
    end
  end
end
