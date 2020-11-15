class SneakersController < ApplicationController
  before_action :index

  # Shows only sneakers that are listed as unsold
  def index
        if params[:search].present?
      # Listing where only active and are apparels can be searched
      @sneaker = Listing.where(category: 1,sold:0) && Listing.where('title ILIKE ?', "%#{params[:search][:title]}%")
    else
      @sneaker = Listing.where(category: 1, sold: 0)
    end
  end
end
