require "test_helper"

class NotesInterfaceTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  def setup
    @user = users(:testuser)
  end

  test "notes interface" do
    sign_in @user
    get root_path
    assert_select "nav"
    assert_select "input[type=date]"

    # invalid submission
    assert_no_difference 'Note.count' do
      post notes_path, params: {note: {title:"", content:""}}
    end

    # valid submission
    assert_difference 'Note.count', 1 do
      post notes_path, params: {note: {title:"lorem", content:"lorem ipsum"}}
    end
    get root_path
    assert_match "lorem ipsum", response.body
  end
end
