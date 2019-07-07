class UserController < ApplicationController
  def top
  end

  def show
  end

  def edit
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  	   redirect_to user_top_path
  	else
  	   render 'new'
  	end
  end
  def user_params
    params.require(:user).permit(:name, :mail, :password, :password_confirmation)
  end
end
