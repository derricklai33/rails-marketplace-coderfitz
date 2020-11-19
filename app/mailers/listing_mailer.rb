class ListingMailer < ApplicationMailer
  # Mailer to send user that created a new listing an email
  def send_listing_mail(user, listing)
    @user = user
    @listing = listing
    mail( :to => @user.email, :subject => "Thanks for listing #{@listing.title}" )
  end
end
