class UsersController < ApplicationController
  def index

  end

  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    if user.save
      redirect_to "/"
    else
      redirect_to :back
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, :password)
  end
end
