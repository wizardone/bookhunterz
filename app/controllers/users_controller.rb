class UsersController < ApplicationController
  respond_to :html
  before_filter :authenticate

  def create
    @user = User.new(user_params)
     if @user.valid?
      @user.save
      redirect_to root_path, notice: "User created"
    else
      render :new
    end
  end

  def new
    @user = User.new
  end

  def update
  end

   private
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :nick)
    end

    def authenticate
      authenticate_or_request_with_http_basic('Admin') do |user, pass|
        user == 'bookhunterZ' && pass == 'h@ckMeBitcheZ'
      end || (raise ActionController::RoutingError.new('Forbidden'))
    end
end
