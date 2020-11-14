class PaymentsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:webhook]

  def success
    @listing = Listing.find(params[:listingId])
  end

  def webhook
    payment_id= params[:data][:object][:payment_intent]
    payment = Stripe::PaymentIntent.retrieve(payment_id)
    dish_id = payment.metadata.dish_id
    user_id = payment.metadata.user_id
  end
end
