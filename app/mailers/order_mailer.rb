class OrderMailer < ApplicationMailer
  def send_order_mail(user, order)
    @user = User.find(user)
    @order = order
    mail( :to => @user.email, :subject => "Thanks for purchasing #{@order.listing.title}" )
  end
end
