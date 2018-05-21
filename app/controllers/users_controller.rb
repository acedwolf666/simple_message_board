class UsersController < ApplicationController
  def index
    @users = User.order(created_at: :desc).limit(10)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_url
    else
      render :action => :new
    end
  end

private
  def user_params
    params.require(:user).permit(:name, :message)
  end
end
