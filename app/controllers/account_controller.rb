class AccountController < ApplicationController
  before_action :authenticate_user!, only: [:index]
  
  def  index
    if user_signed_in?
    end
  end
end
