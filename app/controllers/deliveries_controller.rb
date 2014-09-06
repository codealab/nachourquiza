#encoding: UTF-8
class DeliveriesController < ApplicationController

  def index
  	@user = User.find(params[:user_id])
  	@deliveries = @user.deliveries
  end

  def new
  	@user = current_user
    @unit = Unit.find(params[:unit_id])
    @delivery = @user.deliveries.build
    @delivery.unit_id = @unit.id
  	# 3.times { @delivery.attachments.build }
    if params[:attachments]
      params[:attachments].times { @delivery.attachments.build }
    end
  end

  def create
  	@user = current_user
  	@deliver = @user.deliveries.build(deliver_params)
  	if @deliver.save
  		flash[:success] = "La entrega se ha realizado satisfactoriamente"
  		redirect_to user_unit_path(@deliver.user,@deliver.unit)
      # redirect_to root_path
  	else
  		render "new"
  	end
  end

  def edit
  	@delivery = Delivery.find(params[:user_id])
  	if @delivery.update_attributes(deliver_params)
		flash[:success] = "La entrega se ha actualizado satisfactoriamente"
  		redirect_to user_unit_path(@user,@delivery.unit)
  	else
  		render "new"
  	end
  end

  def show
  	@delivery = Delivery.find(params[:user_id])
  end

  private

  def deliver_params
  	params.require(:delivery).permit(:user_id, :unit_id, :text, :attachments_attributes)
  end

end