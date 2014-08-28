#encoding: UTF-8
class CoursesController < ApplicationController

  def index
  	@courses = Course.all.order('id DESC').page(params[:page])
  end

  def show
  	@course = Course.find(params[:id])
  end

  def new
  	@course = Course.new
  end

  def create
  	@course = Course.new(course_params)
  	if @course.save
  		flash[:success] = "Grupo creado exitosamente"
  		redirect_to courses_path
  	else
  		render 'new'
  	end
  end

  def unit
    @course = Course.find(params[:course_id])
    @unit = @course.units.build(title: params[:title] )
    @course.save
  end

  def plan
    @unit = Unit.find(params[:id])
    @lecture = Lecture.new( name: params[:name], content: params[:content], video_url: params[:video_url] )
    @plan = @unit.plans.build({ lecture_id: @lecture.id }) if @lecture.save
    @unit.save
  end

  def update
  	@course = Course.find(params[:id])
  	if @course.update_attributes(course_params)
  		flash[:success] = "Grupo creado exitosamente"
  		redirect_to course_path(@course)
  	else
  		render 'edit'
  	end
  end

  def edit
  	@course = Course.find(params[:id])
  end

  def accordeon
    @unit = Unit.find(params[:id])
  end

  def positions
    positions = params[:positions]
    @course = Course.find(params[:id])
    positions.each_with_index do |id,index|
      unit=@course.units.find_by_id(id)
      if unit
        unit.position=index
        unit.save
      end
    end
  end

  private

  def course_params
  	params.require(:course).permit(:name, :level)
  end

end