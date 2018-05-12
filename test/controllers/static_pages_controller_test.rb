require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Home | Rails Tutorial"
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title", "Help | Rails Tutorial"
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "About | Rails Tutorial"
  end

  test "should get root" do
    get root_path
    assert_response :success
    assert_select "title", "Home | Rails Tutorial"
  end
end
