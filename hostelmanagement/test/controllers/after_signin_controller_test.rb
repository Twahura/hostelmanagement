require 'test_helper'

class AfterSigninControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get after_signin_index_url
    assert_response :success
  end

end
