class PaymentsController < ApplicationController

  def index
  	@payments = Payment.all
  end

  def show
    @payment = Payment.find(params[:id])
  end

  def new
  	@payment = Payment.new
  	@user = User.find(params[:user_id])
  end

  def create
    @payment = Payment.new(payment_params)
    if @payment.save
      flash[:success] = "Pago realizado exitosamente"
      redirect_to user_path(@payment.user)
    else
      render 'new'
    end
  end

  def edit
  	@user = User.find(params[:user_id])
  end

  def destroy
    Payment.find(params[:id]).destroy
  end

  private
  
    def payment_params
      params.require(:payment).permit(:user_id, :concept_id, :quantity, :clarification, :date)
    end

end