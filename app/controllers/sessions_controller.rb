class SessionsController < ApplicationController
  def new
  end

  def create
    user_params = params[:session]
    user = User.find_by(email: user_params[:email].downcase)
    if user && user.authenticate(user_params[:password])

    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy

  end
end
