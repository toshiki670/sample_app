require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @user = User.new(name: "Example User", email: "user@Example.com")
  end

  test "Should be valid" do
    assert @user.valid?
  end

  test "Name should be present" do
    @user.name = '    '
    assert_not @user.valid?
  end

  test "Email should be present" do
    @user.email = '    '
    assert_not @user.valid?
  end

  test "Name should be too long" do
    @user.name = ' ' * 51
    assert_not @user.valid?
  end

  test "Email should be too long" do
    @user.email = 'a' * 244 + '@example.com'
    assert_not @user.valid?
  end
end
