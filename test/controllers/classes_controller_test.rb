require 'test_helper'

class ClassesControllerTest < ActionDispatch::IntegrationTest
  test "should get Top" do
    get classes_Top_url
    assert_response :success
  end

end
