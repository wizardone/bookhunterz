class SessionsController < ApplicationController

  before_filter :check_user_login, only: :new

  def new

  end

  def create
    user = User.find_by(email: params[:email]).try(:authenticate, params[:password])
    if user
      session[:user_id] = user.id if remember_me?
      redirect_to root_path, notice: "Logged in"
    else
      flash[:error] = "No user matches those credentials"
      render :new
    end
  end

  private
    def remember_me?
      params[:remember_me].present?
    end

    def check_user_login
      redirect_to root_url if is_logged_in?
    end
end
