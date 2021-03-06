class UsersController < ApplicationController
  before_action :authorise, :only => [:index]

  def index
    @users = User.all
  end

  def show
    @user = User.find params[:id]

  end

  def new
    @user = User.new
  end

  def create
    @user = User.create user_params
    if @user.save
    session[:user_id] = @user.id
    redirect_to edit_user_path(@user.id)
    else
      render :new
    end
  end

  def edit
    @user = @current_user
  end

  def update
    user = @current_user
    user.update user_params
    redirect_to root_path
  end

  def destroy
  end

  private
def user_params
  params.require(:user).permit(:firstname, :email, :mobile, :password, :password_confirmation, :image)
end

def authorise
  redirect_to root_path unless (@current_user.present? && @current_user.admin?)
end

end
