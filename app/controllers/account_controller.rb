class AccountController < ApplicationController
  before_action :authenticate_user!
  before_action :index

  def index
    @listings = Listing.where(user_id: current_user.id)
  end
end
