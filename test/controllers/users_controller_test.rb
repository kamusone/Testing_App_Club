require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
test 'valid user' do
      post users_path, params: {
        user: {
          first_name: 'kamkam',
          last_name: 'benben',
          email: 'lolilol@lol.com',
          password: 'qqqqq',
          password_confirmation: 'qqqqq'
        }
      }
      assert flash[:success], 'Inscription validée ! Vous avez maintenant accès à la page club.'
    end



  # test "should create user" do
  # assert_difference('User.count') do
  #   post article_url, params: { user: { email: 'user@example.com' } }
  # end
  #
  # assert_redirected_to article_path(User.last)
  # assert_equal 'User was successfully created.', flash[:notice]
  # end

  # test "should get new users" do
  #   get users_new_url
  #   assert_response :success
  # end
  #
  # test "should get create users" do
  #   get users_create_url
  #   assert_response :success
  # end
  #
  # test "should get destroy users" do
  #   get users_destroy_url
  #   assert_response :success
  # end
  #
  # test "should get edit users" do
  #   get users_edit_url
  #   assert_response :success
  # end
  #
  # test "should get show users" do
  #   get users_show_url
  #   assert_response :success
  # end
  #
  # test "should get update users" do
  #   get users_update_url
  #   assert_response :success
  # end

end
