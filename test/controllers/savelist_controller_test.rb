require 'test_helper'

class SavelistControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get savelist_update_url
    assert_response :success
  end

  test "update fails if product id is nil" do
    update(nil)
    assert_response :error
  end
end
