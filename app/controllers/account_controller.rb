class AccountController < ApplicationController
  before_action :authenticate_user!, only: [:index]
  before_action :index
  
  def  index
    @listings = Listing.all
  end
end
