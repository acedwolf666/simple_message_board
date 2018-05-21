class UsersController < ApplicationController
  def index
    @user = User.new
    @users = User.all
  end

  def create
    @user = User.new(user_params)
    @user.save
    redirect_to users_url
  end

private
  def user_params
    params.require(:user).permit(:name, :message)
  end
end
