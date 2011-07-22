require 'test_helper'

class ExchangeDetailsControllerTest < ActionController::TestCase
  setup do
    @exchange_detail = exchange_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exchange_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exchange_detail" do
    assert_difference('ExchangeDetail.count') do
      post :create, :exchange_detail => @exchange_detail.attributes
    end

    assert_redirected_to exchange_detail_path(assigns(:exchange_detail))
  end

  test "should show exchange_detail" do
    get :show, :id => @exchange_detail.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @exchange_detail.to_param
    assert_response :success
  end

  test "should update exchange_detail" do
    put :update, :id => @exchange_detail.to_param, :exchange_detail => @exchange_detail.attributes
    assert_redirected_to exchange_detail_path(assigns(:exchange_detail))
  end

  test "should destroy exchange_detail" do
    assert_difference('ExchangeDetail.count', -1) do
      delete :destroy, :id => @exchange_detail.to_param
    end

    assert_redirected_to exchange_details_path
  end
end
