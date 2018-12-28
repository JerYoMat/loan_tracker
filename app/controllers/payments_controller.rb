class PaymentsController < ApplicationController

  def new
    @payment = Payment.create(
      :user_id => params[:user_id],
      :loan_id => params[:loan_id]
    )
    @message = @payment.take_ride
    redirect_to user_path(@payment.user, :message => @message)
  end

end
