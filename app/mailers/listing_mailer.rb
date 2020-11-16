class ListingMailer < ApplicationMailer
  def send_listing_mail
    mail( :to => @user.email,
    :subject => 'Thanks for signing up for our amazing app' )
  end
end
