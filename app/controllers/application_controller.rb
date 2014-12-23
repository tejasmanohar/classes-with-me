class ApplicationController < ActionController::Base
  
  protect_from_forgery

  helper_method :current_user

  def index
    if current_user
      redirect_to '/dashboard'
    else
      @hide_navbar = true

      render 'index'
    end
  end

  private
    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
  
end
