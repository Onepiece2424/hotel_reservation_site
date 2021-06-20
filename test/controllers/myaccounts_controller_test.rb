require "test_helper"

class MyaccountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @myaccount = myaccounts(:one)
  end

  test "should get index" do
    get myaccounts_url
    assert_response :success
  end

  test "should get new" do
    get new_myaccount_url
    assert_response :success
  end

  test "should create myaccount" do
    assert_difference('Myaccount.count') do
      post myaccounts_url, params: { myaccount: { icon: @myaccount.icon, introduction: @myaccount.introduction, name: @myaccount.name } }
    end

    assert_redirected_to myaccount_url(Myaccount.last)
  end

  test "should show myaccount" do
    get myaccount_url(@myaccount)
    assert_response :success
  end

  test "should get edit" do
    get edit_myaccount_url(@myaccount)
    assert_response :success
  end

  test "should update myaccount" do
    patch myaccount_url(@myaccount), params: { myaccount: { icon: @myaccount.icon, introduction: @myaccount.introduction, name: @myaccount.name } }
    assert_redirected_to myaccount_url(@myaccount)
  end

  test "should destroy myaccount" do
    assert_difference('Myaccount.count', -1) do
      delete myaccount_url(@myaccount)
    end

    assert_redirected_to myaccounts_url
  end
end
