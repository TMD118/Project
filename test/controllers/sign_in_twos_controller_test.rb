require 'test_helper'

class SignInTwosControllerTest < ActionController::TestCase
  setup do
    @sign_in_two = sign_in_twos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sign_in_twos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sign_in_two" do
    assert_difference('SignInTwo.count') do
      post :create, sign_in_two: { doctorID: @sign_in_two.doctorID, name: @sign_in_two.name, password: @sign_in_two.password }
    end

    assert_redirected_to sign_in_two_path(assigns(:sign_in_two))
  end

  test "should show sign_in_two" do
    get :show, id: @sign_in_two
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sign_in_two
    assert_response :success
  end

  test "should update sign_in_two" do
    patch :update, id: @sign_in_two, sign_in_two: { doctorID: @sign_in_two.doctorID, name: @sign_in_two.name, password: @sign_in_two.password }
    assert_redirected_to sign_in_two_path(assigns(:sign_in_two))
  end

  test "should destroy sign_in_two" do
    assert_difference('SignInTwo.count', -1) do
      delete :destroy, id: @sign_in_two
    end

    assert_redirected_to sign_in_twos_path
  end
end
