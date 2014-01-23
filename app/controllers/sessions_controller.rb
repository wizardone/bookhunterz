class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:email]).try(:authenticate, params[:password])
    if user
      session[:user_id] = user.id
      redirect_to root_path, notice: "Logged in"
    else
      flash[:error] = "No user matches those credentials"
      render :new
    end
  end
end
