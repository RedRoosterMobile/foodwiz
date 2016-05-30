require 'test_helper'

class UsersControllerTest < ActionController::TestCase

  test 'should get new' do
    get :new
    assert_response :success
  end

  test 'should create user with correct params' do
    assert_difference('User.count') do
      post :create, user: { email: "test@t.com", password: "password", password_confirmation: "password" }
    end
    assert_redirected_to root_path
  end

  test 'should not create user with incorrect params' do
    assert_no_difference('User.count') do
      post :create, user: { email: "test2@t.com", password: "password", password_confirmation: "password2" }
    end

    assert_response :success
  end

end
