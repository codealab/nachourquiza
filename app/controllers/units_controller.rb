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

end