class PaymentsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:webhook]

  def success
    redirect_to root_path, success: 'Purchase completed! Check your email for your order summary!'
  end

  def cancel
    redirect_to root_path, error: 'Purchase unsuccessful! Try again later.'
  end

  def webhook
    payment_id = params[:data][:object][:payment_intent]
    payment = Stripe::PaymentIntent.retrieve(payment_id)
    listing_id = payment.metadata.listing_id
    user_id = payment.metadata.user_id
    # Updates listing status from unsold to sold by changing boolean 
    listing = Listing.find(listing_id)
    listing.product_sold
    listing.save
    # Order is then created which shows up in a user's transaction history and run OrderMailer
    @order = Order.create(user_id: user_id, listing_id: listing_id)
    OrderMailer.send_order_mail(user_id, @order).deliver
  end
end
    
