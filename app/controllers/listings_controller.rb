class ListingsController < ApplicationController
  before_action :authenticate_user!

  def new
    @listing = Listing.new
    @listing.build_location
  end

  def create
    @listing = Listing.new(listing_params)
    @listing.user = current_user
    @listing.save
    redirect_to account_path
  end

  def edit
    @listing = Listing.find(params[:id])
  end

  def update
    @listing = Listing.find(params[:id])
    if @listing.update(listing_params)
      redirect_to account_path
    else
      render :edit
    end
  end

  def destroy
    @listing = Listing.find(params[:id])
    # Must delete location dependant listing gets deleted
    @listing.location.destroy
    @listing.destroy
    redirect_to account_path
  end

  private

  def listing_params
    params.require(:listing).permit(:title, :price, :sold, :category, :size, location_attributes: [:id, :city, :state, :country])
  end
end
