require 'test_helper'

class AfterloginControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get afterlogin_index_url
    assert_response :success
  end

end
