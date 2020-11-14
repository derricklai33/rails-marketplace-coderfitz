class ListingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_params, except: %i[new create]

  def show
    # Stripe payment
    if user_signed_in?
      session = Stripe::Checkout::Session.create(
        payment_method_types: ['card'],
        customer_email: current_user.email,
        line_items: [{
          name: @listing.title,
          amount: @listing.stripe_price,
          currency: 'aud',
          quantity: 1,
        }],
        payment_intent_data: {
          metadata: {
            listing_id: @listing.id,
            user_id: current_user.id
          }
        },
        success_url: "#{root_url}payments/success?listingId=#{@listing.id}",
        cancel_url: "#{root_url}"
      )
      @session_id = session.id
    end
  end

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
