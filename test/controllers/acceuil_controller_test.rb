require "test_helper"

class AcceuilControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get acceuil_index_url
    assert_response :success
  end
end
