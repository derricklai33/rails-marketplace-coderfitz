class UsersController < ApplicationController
  before_action :show

  def show
    @user = User.find(params[:id])
    @user_listings = @user.listings.where(sold: 0)
    @sold_listings = @user.listings.where(sold: 1)
  end
end
