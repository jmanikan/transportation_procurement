class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    #debugger
  end

  def new
    @user = User.new
  end

  def create
    # @user = User.new(params[:user]) # Not the final implementation
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to Cloud Logistics!"
      redirect_to @user
    else
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:company, :email, :password,
                                   :password_confirmation)
    end
end
