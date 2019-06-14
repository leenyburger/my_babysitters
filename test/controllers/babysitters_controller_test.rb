require 'test_helper'

class BabysittersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @babysitter = babysitters(:one)
  end

  test "should get index" do
    get babysitters_url
    assert_response :success
  end

  test "should get new" do
    get new_babysitter_url
    assert_response :success
  end

  test "should create babysitter" do
    assert_difference('Babysitter.count') do
      post babysitters_url, params: { babysitter: {  } }
    end

    assert_redirected_to babysitter_url(Babysitter.last)
  end

  test "should show babysitter" do
    get babysitter_url(@babysitter)
    assert_response :success
  end

  test "should get edit" do
    get edit_babysitter_url(@babysitter)
    assert_response :success
  end

  test "should update babysitter" do
    patch babysitter_url(@babysitter), params: { babysitter: {  } }
    assert_redirected_to babysitter_url(@babysitter)
  end

  test "should destroy babysitter" do
    assert_difference('Babysitter.count', -1) do
      delete babysitter_url(@babysitter)
    end

    assert_redirected_to babysitters_url
  end
end
