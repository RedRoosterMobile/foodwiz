require 'test_helper'

class UsersControllerTest < ActionController::TestCase

  test 'should get new' do
    get :new
    assert_response :success
  end

  test 'should create user with correct params' do
    user = build(:user)
    assert_difference('User.count') do
      post :create, user: { email: user.email, password: user.password, password_confirmation: user.password }
    end
    assert_redirected_to root_path
  end

  test 'should not create user non matching password' do
    user = build(:user)
    assert_no_difference('User.count') do
      post :create, user: { email: user.email, password: user.password, password_confirmation: 'someotherpw'}
    end
    assert_response :success
  end

end
