class UsersController < ApplicationController 
  def new 
  end 

  def create
    user = User.create!(user_params)
    if user.save
      flash[:alert] = "Welcome #{user.name}"
      session[:user_id] = user.id
      redirect_to "/dashboard"
    else 
      flash[:alert] = "please enter a valid name and email"
      redirect_to "/register"
    end 
  end 

  def show 
  end 

  private 

  def user_params
    params.permit(:name, :email, :password, :password_confirmation)
  end 
end 