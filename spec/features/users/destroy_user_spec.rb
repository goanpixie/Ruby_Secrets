require 'rails_helper'
RSpec.describe 'deleting account' do
  it 'destroys user and redirects to login page' do
    user = create_user
    log_in user
    click_button 'Delete'
    expect(current_path).to eq('/sessions/new')
  end
end