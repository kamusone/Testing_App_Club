require 'test_helper'

class UserTest < ActiveSupport::TestCase

    def setup
    @user = User.new(first_name: "Example User", last_name: "Example User 2", email: "user@example.com", password: "beaugoss")
  end

  ########################### test#####################
  test "should be valid" do
      assert @user.valid?
    end
    test "first_name should be present" do
    @user.first_name = ""
    assert_not @user.valid?
  end
    test "last_name should be present" do
    @user.last_name = ""
    assert_not @user.valid?
  end

    test "last_name space " do
    @user.last_name = "     "
    assert_not @user.valid?
  end
  test "email should be present" do
   @user.email = "     "
   assert_not @user.valid?
 end

 test 'email must be unique' do
    User.new(
      first_name: 'zizou',
      last_name: 'zidane',
      password: 'qqqqq',
      email: 'zizou@lol.com'
    )
    user = User.new(
      first_name: 'zizou',
      last_name: 'zidane',
      password: 'qqqqq',
      email: 'zizou@lol.com'
    )
    assert_not_nil user.errors[:email], 'email must be unique'
  end

 ############################test length##########################
#  test "name should not be too long" do
#     @user.first_name = "a" * 51
#     assert_not @user.valid?
#   end
#   test "name should not be too long" do
#      @user.last_name = "a" * 51
#      assert_not @user.valid?
#    end
#
#   test "email should not be too long" do
#     @user.email = "a" * 244 + "@example.com"
#     assert_not @user.valid?
#   end
# ##############################TEST form email ##########################"""
#   test "email validation should accept valid addresses" do
#     valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org
#                          first.last@foo.jp alice+bob@baz.cn]
#     valid_addresses.each do |valid_address|
#       @user.email = valid_address
#       assert @user.valid?, "#{valid_address.inspect} should be valid"
#     end
#   end
#   test "email validation should reject invalid addresses" do
#     invalid_addresses = %w[user@example,com user_at_foo.org user.name@example.
#                            foo@bar_baz.com foo@bar+baz.com]
#     invalid_addresses.each do |invalid_address|
#       @user.email = invalid_address
#       assert_not @user.valid?, "#{invalid_address.inspect} should be invalid"
#     end
#     end
end
