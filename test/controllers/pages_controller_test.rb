require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pages_index_url
    assert_response :success
  end

  test "should get two_factor_enabled" do
    get pages_two_factor_enabled_url
    assert_response :success
  end

end
