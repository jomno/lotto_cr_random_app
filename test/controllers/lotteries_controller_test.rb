require 'test_helper'

class LotteriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get lotteries_index_url
    assert_response :success
  end

  test "should get new" do
    get lotteries_new_url
    assert_response :success
  end

  test "should get create" do
    get lotteries_create_url
    assert_response :success
  end

end
