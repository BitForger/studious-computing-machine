require 'test_helper'

class AwsInfoControllerTest < ActionDispatch::IntegrationTest
  test "should get view" do
    get aws_info_view_url
    assert_response :success
  end

end
