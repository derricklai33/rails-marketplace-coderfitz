class ApparelsController < ApplicationController
  before_action :index
  # Shows only apparels that are listed as unsold

  # Sorting by price and title
  def index
    case params[:order]
    when 'Price: Low to High'
      @apparel = Listing.order(price: :asc).apparel_unsold.with_attached_images
      render :index
    when 'Price: High to Low'
      @apparel = Listing.order(price: :desc).apparel_unsold.with_attached_images
      render :index
    when 'Product: A to Z'
      @apparel = Listing.order(title: :asc).apparel_unsold.with_attached_images
      render :index
    when 'Product: Z to A'
      @apparel = Listing.order(title: :desc).apparel_unsold.with_attached_images
      render :index
    end

    # Listing where only active and are apparels can be searched
    if params[:search].present?
      @apparel = Listing.apparel_search_by(search_params).with_attached_images
    else
      @apparel = Listing.apparel_unsold.with_attached_images
    end
  end

  def search_params
    params.require(:search).permit(:title, :size)
  end
end
