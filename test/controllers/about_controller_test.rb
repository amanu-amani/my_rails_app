require "test_helper"

class AboutControllerTest < ActionDispatch::IntegrationTest
  test "should get static" do
    get about_static_url
    assert_response :success
  end

  test "should get show" do
    get about_show_url
    assert_response :success
  end

  test "should get new" do
    get about_new_url
    assert_response :success
  end
end
