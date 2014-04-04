require 'test_helper'

class PostTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "I shoud get the posts page" do
    get "/"
    assert_response :success
  end
end

