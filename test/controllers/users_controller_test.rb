require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = User.new
    @user.email = 'jobs@company.com'
    @user.password = 'secret'
    @user.password_confirmation = 'secret'
  end
  
  test "GET new" do
    get new_user_path
    assert_response :success
    assert_not_nil assigns(:user)
  end

  test "should create a user successfully" do
    assert_difference('User.count') do
      post users_path, params: { user: { email: @user.email, 
                                         password: @user.password, 
                                         password_confirmation: @user.password_confirmation } }
    end

    assert_not_nil assigns(:user)
    assert_redirected_to user_path(User.last)
  end
end