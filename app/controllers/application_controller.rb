class ApplicationController < ActionController::Base
  
  protect_from_forgery

  helper_method :current_user

  layout false

  def index
    if current_user
      redirect_to "http://www.rubyonrails.org"
    else
      render 'index'
    end
  end

  private
    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
  
end
