class SneakersController < ApplicationController
  before_action :index

  # Shows only sneakers that are listed as unsold
  def index
    if params[:search].present?
      # Listing where only active and are sneakers can be searched
      @sneaker = Listing.sneaker_search_by(search_params)
    else
      @sneaker = Listing.where(category: 1, sold: 0)
    end
  end

  def search_params
    params.require(:search).permit(:title, :size)
  end
end
