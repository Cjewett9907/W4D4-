class SessionsController < ApplicationController

  def add

  end



  def create
    token = user.reset_session_token!
    session[:session_token] = token
  end

  def destroy
    logout!
    redirect_to new_user_url
  end




end
