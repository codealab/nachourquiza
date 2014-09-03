class LecturesController < ApplicationController
  
  def index
  	@lectures = Lecture.all.order('id DESC').page(params[:page])
  end

  def show
    puts 'xxxxxxxxxxxxxxxxxxxxxxxx'
    puts 'entre a show'
  	@lecture = Lecture.find(params[:id])
    # render "lectures/show", :layout => false
  end

  def new
  	@lecture = Lecture.new
  end

  def edit
  	@lecture = Lecture.find(params[:id])
  end

  def update
  	@lecture = Lecture.find(params[:id])
  	if @lecture.update_attributes(lecture_params) 
  		redirect_to @lecture 
  	else
  		render 'edit'
  	end
  end

  def create
  	@lecture = Lecture.new(lecture_params)
  	if @lecture.save
  		redirect_to @lecture
  	else
  		render 'new'
  	end
  end

  def destroy
  	Lecture.find(params[:id]).destroy
  	redirect_to lectures_path
  end

  private

	def lecture_params
  		params.require(:lecture).permit(:name, :content, :video_url, :position)
	end

end