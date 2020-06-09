require 'test_helper'

class ShikihosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shikiho = shikihos(:one)
  end

  test "should get index" do
    get shikihos_url
    assert_response :success
  end

  test "should get new" do
    get new_shikiho_url
    assert_response :success
  end

  test "should create shikiho" do
    assert_difference('Shikiho.count') do
      post shikihos_url, params: { shikiho: {  } }
    end

    assert_redirected_to shikiho_url(Shikiho.last)
  end

  test "should show shikiho" do
    get shikiho_url(@shikiho)
    assert_response :success
  end

  test "should get edit" do
    get edit_shikiho_url(@shikiho)
    assert_response :success
  end

  test "should update shikiho" do
    patch shikiho_url(@shikiho), params: { shikiho: {  } }
    assert_redirected_to shikiho_url(@shikiho)
  end

  test "should destroy shikiho" do
    assert_difference('Shikiho.count', -1) do
      delete shikiho_url(@shikiho)
    end

    assert_redirected_to shikihos_url
  end
end
