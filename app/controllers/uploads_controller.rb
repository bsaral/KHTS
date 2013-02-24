class UploadsController < ApplicationController
 
 before_filter :require_login
 before_filter :manager,:only => [ :index ]
 
 def manager
    if current_user
      unless current_user.role == "manager" 
        render :template => 'home/404', :layout => false, :status => :not_found
        
      end
    end
  end
  
 
 
  def index
    @uploads = Upload.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @uploads }
    end
  end

  def show
    @upload = Upload.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @upload }
    end
  end
  
  def user_show
	@user = User.find_by_id(session[:user_id])
    @uploads = Upload.find(:all,:conditions => {:user_id => @user.id})
    
    
  end

 
  def new
    @upload = Upload.new
   

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @upload }
    end
    
    
  end

  
  def edit
    @upload = Upload.find(params[:id])
  end

  
  def create
   
    @upload = Upload.create(params[:upload])
    @user = User.find_by_id(session[:user_id])
    

    respond_to do |format|
      if @upload.save
        format.html { redirect_to @upload, notice: 'Upload was successfully created.' }
        format.json { render json: @upload, status: :created, location: @upload }
      else
        format.html { render action: "new" }
        format.json { render json: @upload.errors, status: :unprocessable_entity }
      end
    end
    @upload.update_attribute(:user_id, @user.id)
    @upload.update_attribute(:username, @user.username)
  end

 
  def update
    @upload = Upload.find(params[:id])

    respond_to do |format|
      if @upload.update_attributes(params[:upload])
        format.html { redirect_to @upload, notice: 'Upload was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @upload.errors, status: :unprocessable_entity }
      end
    end
  end

 
  def destroy
    @upload = Upload.find(params[:id])
    @upload.destroy

    respond_to do |format|
	  if current_user.role == "manager"
		  format.html { redirect_to uploads_url }
		  format.json { head :no_content }
	 else 
		format.html { redirect_to ("/user_show") }
		format.json { head :no_content }
    end
   end
  end
  
  
  
   def download
    upload = Upload.find(params[:id])
    
    send_file  upload.attach.path,
		:filename => upload.attach_file_name,
        :type => upload.attach_content_type,
		:disposition => 'attachment'
    flash[:notice] = "Your file has been downloaded"
  end
end
