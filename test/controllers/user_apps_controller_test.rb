require "test_helper"

class UserAppsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_app = user_apps(:one)
  end

  test "should get index" do
    get user_apps_url
    assert_response :success
  end

  test "should get new" do
    get new_user_app_url
    assert_response :success
  end

  test "should create user_app" do
    assert_difference("UserApp.count") do
      post user_apps_url, params: { user_app: { app_type: @user_app.app_type, author: @user_app.author, ca: @user_app.ca, cs: @user_app.cs, img: @user_app.img, rd: @user_app.rd, size: @user_app.size, title: @user_app.title } }
    end

    assert_redirected_to user_app_url(UserApp.last)
  end

  test "should show user_app" do
    get user_app_url(@user_app)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_app_url(@user_app)
    assert_response :success
  end

  test "should update user_app" do
    patch user_app_url(@user_app), params: { user_app: { app_type: @user_app.app_type, author: @user_app.author, ca: @user_app.ca, cs: @user_app.cs, img: @user_app.img, rd: @user_app.rd, size: @user_app.size, title: @user_app.title } }
    assert_redirected_to user_app_url(@user_app)
  end

  test "should destroy user_app" do
    assert_difference("UserApp.count", -1) do
      delete user_app_url(@user_app)
    end

    assert_redirected_to user_apps_url
  end
end
