require "test_helper"

class ConverterControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get converter_new_url
    assert_response :success
  end

  test "should get create" do
    get converter_create_url
    assert_response :success
  end
end
