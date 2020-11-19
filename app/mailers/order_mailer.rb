class OrderMailer < ApplicationMailer
  def send_order_mail(user, order)
    @user = User.find(user)
    @order = order
    mail( :to => @user.email, :subject => "Thanks for purchasing #{@order.listing.title}" )
  end

  def send_order_mail_user(user, order)
    @order = order
    @user = @order.listing.user
    mail( :to => @user.email, :subject => "Your listing (#{@order.listing.title}) has been sold!" )
  end
end
