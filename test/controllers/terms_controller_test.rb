require 'test_helper'

class TermsControllerTest < ActionDispatch::IntegrationTest
  test "should get privacy" do
    get terms_privacy_url
    assert_response :success
  end

end
