class ApplicationController < ActionController::Base
  protect_from_forgery
  rescue_from CanCan::AccessDenied do |exception|
	flash[:error] = "yeterli yetkiniz yok."
	redirect_to root_url
  end
  def current_user
	  session[:user_id] ? @current_user ||= User.find(session[:user_id]) : nil
  end
  
  private

  def require_login
    unless current_user
      redirect_to login_url
    end
  end
  
  
end
