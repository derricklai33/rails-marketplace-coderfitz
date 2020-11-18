class SneakersController < ApplicationController
  before_action :index
  # Shows only sneakers that are listed as unsold

  # Sorting by price and title
  def index
    if params[:order].present?
      case params[:order]
      when 'Price: Low to High'
        @sneaker = Listing.order(price: :asc).sneaker_unsold.with_attached_images
        render :index
      when 'Price: High to Low'
        @sneaker = Listing.order(price: :desc).sneaker_unsold.with_attached_images
        render :index
      when 'Product: A to Z'
        @sneaker = Listing.order(title: :asc).sneaker_unsold.with_attached_images
        render :index
      when 'Product: Z to A'
        @sneaker = Listing.order(title: :desc).sneaker_unsold.with_attached_images
        render :index
      end
    end

    # Listing where only active and are sneakers can be searched
    if params[:search].present?
      @sneaker = Listing.sneaker_search_by(search_params).with_attached_images
    else
      @sneaker = Listing.sneaker_unsold.with_attached_images
    end
  end

  def search_params
    params.require(:search).permit(:title, :size)
  end
end
