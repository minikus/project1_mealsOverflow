class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
  end

  def new
  end

  def create
  end


  def edit
  end

  def update
  end

  def destroy
  end

  private
def user_params
  params.require(:user).permit(:firstname, :email, :mobile, :password_confirmation, :image)
end
end
