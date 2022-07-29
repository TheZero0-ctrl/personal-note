require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  def setup
    @user = users(:testuser)
    @base_title = "Personal Note"
  end

  test "should get show when logged in" do
    sign_in @user
    get root_url
    assert_response :success
  end

  test "should redirect show when not logged in" do
    get root_url
    follow_redirect!
    assert_template "devise/sessions/new"
    assert_select "title", "Log in | #{@base_title}"
  end
end
