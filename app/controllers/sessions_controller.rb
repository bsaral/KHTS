class SessionsController < ApplicationController
  def new
	
  end
  def create
	user = User.find_by_username(params[:username])
	if user && user.authenticate(params[:password])
	  session[:user_id] = user.id
	  case user.role
	  when "manager"
		#redirect_to deneme_index_path
	  when "user"
		redirect_to ("/upload")
	  end
	else
	  flash[:error] = "Kullanici adin ve/veya parolan hatali"
	  redirect_to root_url

	end
  end

  def destroy
	session[:user_id] = nil
	redirect_to root_url
  end
end

