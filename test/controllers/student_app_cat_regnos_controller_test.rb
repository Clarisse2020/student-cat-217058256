require 'test_helper'

class StudentAppCatRegnosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student_app_cat_regno = student_app_cat_regnos(:one)
  end

  test "should get index" do
    get student_app_cat_regnos_url
    assert_response :success
  end

  test "should get new" do
    get new_student_app_cat_regno_url
    assert_response :success
  end

  test "should create student_app_cat_regno" do
    assert_difference('StudentAppCatRegno.count') do
      post student_app_cat_regnos_url, params: { student_app_cat_regno: { firstname: @student_app_cat_regno.firstname, lastname: @student_app_cat_regno.lastname, registrationnumber: @student_app_cat_regno.registrationnumber } }
    end

    assert_redirected_to student_app_cat_regno_url(StudentAppCatRegno.last)
  end

  test "should show student_app_cat_regno" do
    get student_app_cat_regno_url(@student_app_cat_regno)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_app_cat_regno_url(@student_app_cat_regno)
    assert_response :success
  end

  test "should update student_app_cat_regno" do
    patch student_app_cat_regno_url(@student_app_cat_regno), params: { student_app_cat_regno: { firstname: @student_app_cat_regno.firstname, lastname: @student_app_cat_regno.lastname, registrationnumber: @student_app_cat_regno.registrationnumber } }
    assert_redirected_to student_app_cat_regno_url(@student_app_cat_regno)
  end

  test "should destroy student_app_cat_regno" do
    assert_difference('StudentAppCatRegno.count', -1) do
      delete student_app_cat_regno_url(@student_app_cat_regno)
    end

    assert_redirected_to student_app_cat_regnos_url
  end
end
