require "test_helper"

class NotesControllerTest < ActionDispatch::IntegrationTest
    include Devise::Test::IntegrationHelpers
    def setup
        @user = users(:testuser)
        @base_title = "Personal Note"
        @note = notes(:one)
    end

    test "should redirect show when not logged in" do
        get note_url(@note)
        follow_redirect!
        assert_template "devise/sessions/new"
        assert_select "title", "Log in | #{@base_title}"
    end

    test "should get show when logged in" do
        sign_in @user
        get note_url(@note)
        assert_template "notes/show"
    end

    test "should redirect show when not correct user"  do
        sign_in @user
        get note_url(notes(:two))
        follow_redirect!
        assert_template "users/show"
    end

    test "should redirect create when not logged in" do
        assert_no_difference "Note.count" do
            post notes_path, params: {note:{title:"lorem", content:"lorem ipsum"}}
        end
        assert_redirected_to new_user_session_url
    end

    test "should redirect destroy when not sign in" do
        assert_no_difference 'Note.count' do
          delete note_path(@note)
        end
        assert_redirected_to new_user_session_url
    end

    test "should destroy for wrong post" do
        sign_in @user
        note = notes(:two)
        assert_no_difference 'Note.count' do
          delete note_path(note)
        end
        assert_redirected_to root_url
    end
end
