class ListingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_params, except: %i[new create]

  def show; end

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

  def edit; end

  def update
    if @listing.update(listing_params)
      redirect_to account_path
    else
      render :edit
    end
  end

  # Controller action to set listing to "inactive" but does not delete from the database
  def bought
    @listing.product_sold
    @listing.save
    Order.create(user_id: current_user.id, listing_id: @listing.id)
    redirect_to account_path
  end

  def destroy
    # Must delete location dependant listing gets deleted
    @listing.location.destroy
    @listing.destroy
    redirect_to account_path
  end

  private

  def set_params
    @listing = Listing.find(params[:id])
  end

  def listing_params
    params.require(:listing).permit(:title, :price, :sold, :category, :size, images: [], location_attributes: %i[id city state country])
  end
end
