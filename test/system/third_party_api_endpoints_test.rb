require "application_system_test_case"

class ThirdPartyApiEndpointsTest < ApplicationSystemTestCase
  setup do
    @third_party_api_endpoint = third_party_api_endpoints(:one)
  end

  test "visiting the index" do
    visit third_party_api_endpoints_url
    assert_selector "h1", text: "Third party api endpoints"
  end

  test "should create third party api endpoint" do
    visit third_party_api_endpoints_url
    click_on "New third party api endpoint"

    fill_in "Endpoint", with: @third_party_api_endpoint.endpoint
    click_on "Create Third party api endpoint"

    assert_text "Third party api endpoint was successfully created"
    click_on "Back"
  end

  test "should update Third party api endpoint" do
    visit third_party_api_endpoint_url(@third_party_api_endpoint)
    click_on "Edit this third party api endpoint", match: :first

    fill_in "Endpoint", with: @third_party_api_endpoint.endpoint
    click_on "Update Third party api endpoint"

    assert_text "Third party api endpoint was successfully updated"
    click_on "Back"
  end

  test "should destroy Third party api endpoint" do
    visit third_party_api_endpoint_url(@third_party_api_endpoint)
    click_on "Destroy this third party api endpoint", match: :first

    assert_text "Third party api endpoint was successfully destroyed"
  end
end
