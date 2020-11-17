class PaymentsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:webhook]

  def success
    @listing = Listing.find(params[:listingId])
    @listing.product_sold
    @listing.save
    @order = Order.create(user_id: current_user.id, listing_id: @listing.id)
    OrderMailer.send_order_mail(current_user, @order).deliver
  end

  def webhook
    payment_id= params[:data][:object][:payment_intent]
    payment = Stripe::PaymentIntent.retrieve(payment_id)
    dish_id = payment.metadata.dish_id
    user_id = payment.metadata.user_id
  end
end
