require "test_helper"

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(email: "testuser20@mail.com", password:'123456')
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "email should be present" do
    @user.email = ""
    assert_not @user.valid?
  end

  test "password should be present" do
    @user.password = ""
    assert_not @user.valid?
  end

  test "email should be uniq" do
    duplicate_user = @user.dup
    @user.save
    assert_not duplicate_user.valid?
  end
end
