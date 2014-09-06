#encoding: UTF-8
class UnitsController < ApplicationController

  def index
  	@units = Unit.all
  end

  def show
  	@unit = Unit.find(params[:id])
    @delivery = current_user.deliveries.build
    @delivery.unit_id = @unit.id
    # 3.times { @delivery.attachments.build }
    @delivery.attachments.build
    render "units/show", :layout => false
  end

  def new
  	@unit = Unit.new
  end

  def edit
  	@unit = Unit.find(params[:id])
  end

  def destroy
    Unit.find(params[:id]).destroy
    redirect_to :back
  end

end