require 'test_helper'

class ImageControllerTest < ActionDispatch::IntegrationTest
  test "should get img_upload" do
    get image_img_upload_url
    assert_response :success
  end

end
