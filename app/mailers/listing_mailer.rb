class ListingMailer < ApplicationMailer
  default from: 'ahlai33@gmail.com'

  def send_listing_mail(listing)
    @listing = listing
    mail( :to => @listing.user.email, :subject => "Thanks for listing #{@listing.title}" )
  end
end
