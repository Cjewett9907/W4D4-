class ApplicationController < ActionController::Base

  helper_method :current_user

  def logout!
    current_user[:session_token] = nil
  end

  def current_user
    @current_user ||= User.find_by_session_token(session[:session_token])
  end

  def login!(user)
    @current_user = user
    session[:session_token] = @current_user.reset_session_token!

  end


  def logged_in?
    return false unless @current_user
    @current_user.session_token == session[:session_token]
  end


end
