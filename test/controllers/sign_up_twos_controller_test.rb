require 'test_helper'

class SignUpTwosControllerTest < ActionController::TestCase
  setup do
    @sign_up_two = sign_up_twos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sign_up_twos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sign_up_two" do
    assert_difference('SignUpTwo.count') do
      post :create, sign_up_two: { PMDCno: @sign_up_two.PMDCno, cellno: @sign_up_two.cellno, city: @sign_up_two.city, confirmpassword: @sign_up_two.confirmpassword, dateofbirth: @sign_up_two.dateofbirth, email: @sign_up_two.email, firstname: @sign_up_two.firstname, institution: @sign_up_two.institution, lastname: @sign_up_two.lastname, middlename: @sign_up_two.middlename, officehourend: @sign_up_two.officehourend, officehourstart: @sign_up_two.officehourstart, password: @sign_up_two.password, phoneno: @sign_up_two.phoneno, speciality: @sign_up_two.speciality, username: @sign_up_two.username }
    end

    assert_redirected_to sign_up_two_path(assigns(:sign_up_two))
  end

  test "should show sign_up_two" do
    get :show, id: @sign_up_two
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sign_up_two
    assert_response :success
  end

  test "should update sign_up_two" do
    patch :update, id: @sign_up_two, sign_up_two: { PMDCno: @sign_up_two.PMDCno, cellno: @sign_up_two.cellno, city: @sign_up_two.city, confirmpassword: @sign_up_two.confirmpassword, dateofbirth: @sign_up_two.dateofbirth, email: @sign_up_two.email, firstname: @sign_up_two.firstname, institution: @sign_up_two.institution, lastname: @sign_up_two.lastname, middlename: @sign_up_two.middlename, officehourend: @sign_up_two.officehourend, officehourstart: @sign_up_two.officehourstart, password: @sign_up_two.password, phoneno: @sign_up_two.phoneno, speciality: @sign_up_two.speciality, username: @sign_up_two.username }
    assert_redirected_to sign_up_two_path(assigns(:sign_up_two))
  end

  test "should destroy sign_up_two" do
    assert_difference('SignUpTwo.count', -1) do
      delete :destroy, id: @sign_up_two
    end

    assert_redirected_to sign_up_twos_path
  end
end
