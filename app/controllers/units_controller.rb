class UnitsController < ApplicationController

  def index
  	@units = Unit.all
  end

  def show
  	@unit = Unit.find(params[:id])
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