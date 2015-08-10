class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # Logs the user in and redirect to user show page
    else
      flash.now[:danger] = 'Invalid email/password combination'
      # flash.now only shows message once, instead of being rendered twice
      render 'new'
    end
  end

  def destroy
  end
end
