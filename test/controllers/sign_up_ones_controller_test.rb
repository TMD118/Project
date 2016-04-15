require 'test_helper'

class SignUpOnesControllerTest < ActionController::TestCase
  setup do
    @sign_up_one = sign_up_ones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sign_up_ones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sign_up_one" do
    assert_difference('SignUpOne.count') do
      post :create, sign_up_one: { cellno: @sign_up_one.cellno, city: @sign_up_one.city, confirmpassword: @sign_up_one.confirmpassword, dateofbirth: @sign_up_one.dateofbirth, email: @sign_up_one.email, firstname: @sign_up_one.firstname, lastname: @sign_up_one.lastname, middlename: @sign_up_one.middlename, password: @sign_up_one.password, phoneno: @sign_up_one.phoneno, username: @sign_up_one.username }
    end

    assert_redirected_to sign_up_one_path(assigns(:sign_up_one))
  end

  test "should show sign_up_one" do
    get :show, id: @sign_up_one
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sign_up_one
    assert_response :success
  end

  test "should update sign_up_one" do
    patch :update, id: @sign_up_one, sign_up_one: { cellno: @sign_up_one.cellno, city: @sign_up_one.city, confirmpassword: @sign_up_one.confirmpassword, dateofbirth: @sign_up_one.dateofbirth, email: @sign_up_one.email, firstname: @sign_up_one.firstname, lastname: @sign_up_one.lastname, middlename: @sign_up_one.middlename, password: @sign_up_one.password, phoneno: @sign_up_one.phoneno, username: @sign_up_one.username }
    assert_redirected_to sign_up_one_path(assigns(:sign_up_one))
  end

  test "should destroy sign_up_one" do
    assert_difference('SignUpOne.count', -1) do
      delete :destroy, id: @sign_up_one
    end

    assert_redirected_to sign_up_ones_path
  end
end
