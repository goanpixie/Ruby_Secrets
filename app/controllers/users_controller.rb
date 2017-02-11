class UsersController < ApplicationController
  def new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to :back
    end
  end

  def show
  	@user=User.find(params[:id])
  end

    def destroy
    user = User.find(params[:id])
    user.destroy
    session[:user_id] = nil
    redirect_to new_sessions_path    
  	end

    private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
