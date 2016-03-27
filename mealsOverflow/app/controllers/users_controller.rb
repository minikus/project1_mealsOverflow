class UsersController < ApplicationController

  def new
    @user = User.all
  end

  def show
  end

  def edit
  end


  private
def user_params
  params.require(:user).permit(:firstname, :email, :mobile, :password_confirmation, :image)
end
end
