require "test_helper"

class UserShowTest < ActionDispatch::IntegrationTest
  
   def setup
   @user = users(:sebastian)
   @non_active_user = users(:nonactive)
   end
  
  test "Should redirect if trying to see non activated profiles" do
    log_in_as(@user)
    get user_path(@non_active_user)
    assert_redirected_to root_url
  end
end
