require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get tokyo" do
    get posts_tokyo_url
    assert_response :success
  end

end
