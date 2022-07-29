require "test_helper"

class NoteTest < ActiveSupport::TestCase
  def setup
    @user = users(:testuser)
    @note = @user.notes.build(title: "hello", content:"test note")
  end

  test "should be valid" do
    assert @note.valid?
  end

  test "user_id should be present" do
    @note.user_id = nil
    assert_not  @note.valid?
  end

  test "title should be present" do
    @note.title = ""
    assert_not @note.valid?
  end

  test "content should be present" do
    @note.content = ""
    assert_not @note.valid?
  end

  test "order should be recent first" do
    assert_equal notes(:most_recent), Note.first
  end
end
