class ApparelsController < ApplicationController
  before_action :index

  # Shows only apparels that are listed as unsold
  def index
    if params[:search].present?
      # Listing where only active and are apparels can be searched
      @apparel = Listing.apparel_search_by(search_params)
    else
      @apparel = Listing.where(category: 0, sold: 0)
    end
  end

  def search_params
    params.require(:search).permit(:title, :size)
  end
end
