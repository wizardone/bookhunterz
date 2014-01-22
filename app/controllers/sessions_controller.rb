class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.authenticate(params[:email], params[:password])
    if user

    else
      flash[:error] = "No user matches those credentials"
      render :new
    end
  end
end
