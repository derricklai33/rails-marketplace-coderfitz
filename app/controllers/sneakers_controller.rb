class SneakersController < ApplicationController
  before_action :index
  
  def index
    @sneaker = Listing.where(category: 1)

  end
end
