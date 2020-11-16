class ListingMailer < ApplicationMailer
  def send_listing_mail(user, listing)
    @user = user
    @listing = listing
    mail( :to => @user.email, :subject => "Thanks for listing #{@listing.title}" )
  end
end
