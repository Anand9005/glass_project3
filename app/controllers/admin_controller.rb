class AdminController < ApplicationController
  def login
    if request.post?
			if params[:admin][:name]=="admin" && params[:admin][:password]=="anand"
				session[:admin]="admin"
				redirect_to :controller=>"stores", :action=>"index"
			else
				flash[:notice]="Invalid Name/Password"
				render :action=>"login"
			end
	end

  end
	def logout
		session[:admin]=nil
		flash[:notice]="Logged out"
		redirect_to :controller=>"home", :action=>"index"
	end
  
end
