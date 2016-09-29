require 'test_helper'

class PageControllerTest < ActionDispatch::IntegrationTest
  test "should get test" do
    get page_test_url
    assert_response :success
  end

end
