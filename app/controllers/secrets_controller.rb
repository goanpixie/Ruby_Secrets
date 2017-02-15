class SecretsController < ApplicationController


  def create
    @secret = Secret.new(secret_params)
    if @secret.save
      redirect_to @secret
    else
      flash[:errors] = @secret.errors.full_messages
      redirect_to :back
    end
  end

  def show
    @secret=Secret.find(params[:id])
  end

  private
  def secret_params
    params.require(:secret).permit(:content)
  end
end