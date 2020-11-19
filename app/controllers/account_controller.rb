class AccountController < ApplicationController
  before_action :authenticate_user!
  before_action :index

  def index
    @listings = Listing.where(user_id: current_user.id, sold: 0).with_attached_images
    @orders = Order.includes(listing: { images_attachments: :blob }).where(user: current_user)
  end
end
