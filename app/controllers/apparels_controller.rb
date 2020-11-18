class ApparelsController < ApplicationController
  before_action :index
  # Shows only apparels that are listed as unsold

  # Sorting by price and title
  def index
    if params[:order] == "Price: Low to High"
      @apparel = Listing.order(price: :asc).where(category: 0, sold: 0).includes(images_attachments: :blob)
      render :index
    elsif params[:order] == "Price: High to Low"
      @apparel = Listing.order(price: :desc).where(category: 0, sold: 0).includes(images_attachments: :blob)
      render :index
    elsif params[:order] == "Product: A to Z"
      @apparel = Listing.order(title: :asc).where(category: 0, sold: 0).includes(images_attachments: :blob)
      render :index
    elsif params[:order] == "Product: Z to A"
      @apparel = Listing.order(title: :desc).where(category: 0, sold: 0).includes(images_attachments: :blob)
      render :index
    end

    # Listing where only active and are apparels can be searched
    if params[:search].present?
      @apparel = Listing.apparel_search_by(search_params).includes(images_attachments: :blob)
    else
      @apparel = Listing.where(category: 0, sold: 0).includes(images_attachments: :blob)
    end
  end

  def search_params
    params.require(:search).permit(:title, :size)
  end
end
