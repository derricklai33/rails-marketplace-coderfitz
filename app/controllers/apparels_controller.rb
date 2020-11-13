class ApparelsController < ApplicationController
  before_action :index

  # Shows only apparels that are listed as unsold
  def index
    @apparel = Listing.where(category: 0, sold: 0)
  end
end
