class UsersController < ApplicationController
  respond_to :html
  def create
    @user = User.new(user_params)
     if @user.valid?
      @user.save
      redirect_to @user, notice: "User sign up success"
    else
      render :new
    end
    #respond_with @user
  end

  def new
    @user = User.new
  end

  def update

  end

   private
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end
end
