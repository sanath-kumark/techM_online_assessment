require "test_helper"

class ThirdPartyApiEndpointsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @third_party_api_endpoint = third_party_api_endpoints(:one)
  end

  test "should get index" do
    get third_party_api_endpoints_url
    assert_response :success
  end

  test "should get new" do
    get new_third_party_api_endpoint_url
    assert_response :success
  end

  test "should create third_party_api_endpoint" do
    assert_difference("ThirdPartyApiEndpoint.count") do
      post third_party_api_endpoints_url, params: { third_party_api_endpoint: { endpoint: @third_party_api_endpoint.endpoint } }
    end

    assert_redirected_to third_party_api_endpoint_url(ThirdPartyApiEndpoint.last)
  end

  test "should show third_party_api_endpoint" do
    get third_party_api_endpoint_url(@third_party_api_endpoint)
    assert_response :success
  end

  test "should get edit" do
    get edit_third_party_api_endpoint_url(@third_party_api_endpoint)
    assert_response :success
  end

  test "should update third_party_api_endpoint" do
    patch third_party_api_endpoint_url(@third_party_api_endpoint), params: { third_party_api_endpoint: { endpoint: @third_party_api_endpoint.endpoint } }
    assert_redirected_to third_party_api_endpoint_url(@third_party_api_endpoint)
  end

  test "should destroy third_party_api_endpoint" do
    assert_difference("ThirdPartyApiEndpoint.count", -1) do
      delete third_party_api_endpoint_url(@third_party_api_endpoint)
    end

    assert_redirected_to third_party_api_endpoints_url
  end
end
