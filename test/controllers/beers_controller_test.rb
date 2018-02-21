require 'test_helper'

class BeersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get addbeer_path
    assert_response :success
  end

  test "should get edit" do
    get editbeer_path
    assert_response :success
  end

  test "should get remove" do
    get removebeer_path
    assert_response :success
  end

end
