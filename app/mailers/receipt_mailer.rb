class ReceiptMailer < ApplicationMailer

  def send_receipt(the_order, the_user)
    @order = the_order

    @user = the_user
    mail to: @user.email, subject: "Thank you for your order"
  end
end
