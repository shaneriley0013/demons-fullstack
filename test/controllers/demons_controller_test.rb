require "test_helper"

class DemonsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get demons_index_url
    assert_response :success
  end
end
