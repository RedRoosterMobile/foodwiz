require 'test_helper'

class PostTest < ActionDispatch::IntegrationTest
  test 'I shoud get the posts page' do
    get '/'
    assert_response :success
  end
end

