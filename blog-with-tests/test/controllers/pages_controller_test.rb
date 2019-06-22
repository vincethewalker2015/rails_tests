require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @base_title = "Blog"
  end
  
  test "should get home" do
    get pages_home_url
    assert_response :success
  end
end
