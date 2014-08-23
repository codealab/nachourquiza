#encoding: UTF-8
class PaymentsController < ApplicationController

  def index
  	query = Payment.all
    query = Payment.where( :user_id => params[:user_id] ) if params[:user_id]
    @payments = query.order('date DESC').page(params[:page])
  end

  def show
    @payment = Payment.find(params[:id])
  end

  def new
    @user = User.find(params[:user_id])
  	@payment = Payment.new
  end

  def create
    @user = User.find(params[:user_id])
    @user.payments.build(payment_params)
    if @user.save
      flash[:success] = "Pago realizado exitosamente"
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end

  def concept
    @concept = Concept.create( name: params[:concept] ) if params[:concept]
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