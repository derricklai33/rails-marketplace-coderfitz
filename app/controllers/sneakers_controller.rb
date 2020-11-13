class SneakersController < ApplicationController
  before_action :index

  # Shows only sneakers that are listed as unsold
  def index
    @sneaker = Listing.where(category: 1, sold: 0)
  end
end
