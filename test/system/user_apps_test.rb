require "application_system_test_case"

class UserAppsTest < ApplicationSystemTestCase
  setup do
    @user_app = user_apps(:one)
  end

  test "visiting the index" do
    visit user_apps_url
    assert_selector "h1", text: "User apps"
  end

  test "should create user app" do
    visit user_apps_url
    click_on "New user app"

    fill_in "App type", with: @user_app.app_type
    fill_in "Author", with: @user_app.author
    fill_in "Ca", with: @user_app.ca
    check "Cs" if @user_app.cs
    fill_in "Img", with: @user_app.img
    fill_in "Rd", with: @user_app.rd
    fill_in "Size", with: @user_app.size
    fill_in "Title", with: @user_app.title
    click_on "Create User app"

    assert_text "User app was successfully created"
    click_on "Back"
  end

  test "should update User app" do
    visit user_app_url(@user_app)
    click_on "Edit this user app", match: :first

    fill_in "App type", with: @user_app.app_type
    fill_in "Author", with: @user_app.author
    fill_in "Ca", with: @user_app.ca
    check "Cs" if @user_app.cs
    fill_in "Img", with: @user_app.img
    fill_in "Rd", with: @user_app.rd
    fill_in "Size", with: @user_app.size
    fill_in "Title", with: @user_app.title
    click_on "Update User app"

    assert_text "User app was successfully updated"
    click_on "Back"
  end

  test "should destroy User app" do
    visit user_app_url(@user_app)
    click_on "Destroy this user app", match: :first

    assert_text "User app was successfully destroyed"
  end
end
