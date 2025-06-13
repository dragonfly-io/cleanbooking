require "test_helper"

class Agency::DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get agency_dashboard_index_url
    assert_response :success
  end
end
