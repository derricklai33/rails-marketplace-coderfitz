class OrderMailer < ApplicationMailer
  # Mailer to send user that bought a new listing an email
  def send_order_mail(user, order)
    @user = User.find(user)
    @order = order
    mail( :to => @user.email, :subject => "Thanks for purchasing #{@order.listing.title}" )
  end

  # Mailer to send user that the listing that was listed is sold.
  def send_order_mail_user(user, order)
    @order = order
    @user = @order.listing.user
    mail( :to => @user.email, :subject => "Your listing (#{@order.listing.title}) has been sold!" )
  end
end
