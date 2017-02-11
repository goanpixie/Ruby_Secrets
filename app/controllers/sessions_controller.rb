class SessionsController < ApplicationController
 	def new
	end

	def create

    	user = User.find_by_email(params[:email])

    	if user && user.authenticate(params[:password])
    		
      		session[:user_id] = user.id
      		redirect_to user
    		else
      		flash[:errors] = ["Invalid combination"]
      		render '/sessions/new'
    		end
  		end

	def destroy
    session[:user_id] = nil
    render new_sessions_path
	end

end


