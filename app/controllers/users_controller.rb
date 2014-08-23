# encoding: UTF-8
class UsersController < ApplicationController

  # load_and_authorize_resource
  skip_before_action :require_login, only: [ :new, :create ]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @payments = @user.payments.order('date DESC').page(params[:page])
  end

  def new
  	@user = User.new
  end

  def create
    @user = User.new(user_params)
    if current_user
      @user.student = true if current_user.admin?
    end
    if @user.save
      if params[:user][:photo].present?
        render :crop
      else
        flash[:success] = "Usuario creado exitosamente"
        sign_in @user
        redirect_to user_path(@user)
      end
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      if params[:user][:photo].present?
        render :crop
      else
        flash[:success] = "Actualización exitosa"
        redirect_to users_path
      end
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id]).destroy
    if @user.can_destroy?
      flash[:success] = "Usuario eliminado"
    else
      flash[:warning] = "Este usuario no se puede eliminar."
    end
    redirect_to users_url
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :admin, :student, :teacher, :photo, :crop_x, :crop_y, :crop_w, :crop_h )
    end

end