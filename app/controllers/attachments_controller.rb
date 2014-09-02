#encoding: UTF-8
class AttachmentsController < ApplicationController

  def index
  	@attachments = Attachment.all
  end

  def new
  	@attachment = Attachment.new
  end

  def edit
  	@attachment = Attachment.find(params[:id])
  end

  def show
  	@attachment = Attachment.find(params[:id])
  end

  def create
  	@attachment = Attachment.new(attachment_params)
  	if @attachment.save
  		flash[:success] = "El archivo se ha cargado exitosamente"
  		redirect_to @attachment
  	else
  		render "new"
  	end
  end

  def update
  	@attachment = Attachment.find(params[:id])
  	if @attachment.update_attributes(attachment_params)
  		flash[:success] = "Archivo actualizado exitosamente"
  		redirect_to @attachment
	else
		render "edit"
	end
  end

  def destroy
  	Attachment.find(params[:id]).destroy()
  end

  private

  def attachment_params
  	require(:attachment).permit(:delivery_id, :lecture_id, :type, :file, :title, :description)
  end

end