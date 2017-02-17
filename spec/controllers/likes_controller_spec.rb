require 'rails_helper'
RSpec.describe LikesController, type: :controller do

  before do
    @user = create_user
    log_in @user
    @secret = @user.secrets.create(content: 'Oops')
    Like.create(user: @user, secret: @secret)
  end
 
end



