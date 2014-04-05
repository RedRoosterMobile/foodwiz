require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  setup do
    @post = posts(:one)
    login_user(users(:valid_user))
  end

  test 'there should be pagination' do
    # create several posts and make sure pagination is on screen
    (Foodwiz::Application.config.foodwiz[:pagination_count]*2).times do
      post :create, post: { body: @post.body, title: @post.title }
    end
    get :index
    assert_template :index
    assert_template layout: 'layouts/application'
    assert_select 'div.pagination' do
      # we found the pagination div!
      assert true
    end
  end

  test 'should get index' do
    get :index
    assert_response :success
    assert_not_nil assigns(:posts)
  end

  test 'should get new' do
    get :new
    assert_response :success
  end

  test 'should create post' do
    assert_difference('Post.count') do
      post :create, post: { body: @post.body, title: @post.title }
    end

    assert_redirected_to post_path(assigns(:post))
  end

  test 'should show post' do
    get :show, id: @post
    assert_response :success
  end

  test 'should get edit' do
    get :edit, id: @post
    assert_response :success
  end

  test 'should update post' do
    patch :update, id: @post, post: { body: @post.body, title: @post.title }
    assert_redirected_to post_path(assigns(:post))
  end

  test 'should destroy post' do
    assert_difference('Post.count', -1) do
      delete :destroy, id: @post
    end

    assert_redirected_to posts_path
  end
end
