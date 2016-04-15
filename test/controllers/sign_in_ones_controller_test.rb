require 'test_helper'

class SignInOnesControllerTest < ActionController::TestCase
  setup do
    @sign_in_one = sign_in_ones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sign_in_ones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sign_in_one" do
    assert_difference('SignInOne.count') do
      post :create, sign_in_one: { name: @sign_in_one.name, password: @sign_in_one.password }
    end

    assert_redirected_to sign_in_one_path(assigns(:sign_in_one))
  end

  test "should show sign_in_one" do
    get :show, id: @sign_in_one
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sign_in_one
    assert_response :success
  end

  test "should update sign_in_one" do
    patch :update, id: @sign_in_one, sign_in_one: { name: @sign_in_one.name, password: @sign_in_one.password }
    assert_redirected_to sign_in_one_path(assigns(:sign_in_one))
  end

  test "should destroy sign_in_one" do
    assert_difference('SignInOne.count', -1) do
      delete :destroy, id: @sign_in_one
    end

    assert_redirected_to sign_in_ones_path
  end
end
