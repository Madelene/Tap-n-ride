class SessionsController < ApplicationController

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.user_id
      redirect_to user, notice: "Welcome to Tap-n-Ride!"
    else
      render new
    end
  end

  def new
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "See ya!"
  end
end
