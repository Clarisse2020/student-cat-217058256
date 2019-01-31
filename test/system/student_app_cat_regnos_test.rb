require "application_system_test_case"

class StudentAppCatRegnosTest < ApplicationSystemTestCase
  setup do
    @student_app_cat_regno = student_app_cat_regnos(:one)
  end

  test "visiting the index" do
    visit student_app_cat_regnos_url
    assert_selector "h1", text: "Student App Cat Regnos"
  end

  test "creating a Student app cat regno" do
    visit student_app_cat_regnos_url
    click_on "New Student App Cat Regno"

    fill_in "Firstname", with: @student_app_cat_regno.firstname
    fill_in "Lastname", with: @student_app_cat_regno.lastname
    fill_in "Registrationnumber", with: @student_app_cat_regno.registrationnumber
    click_on "Create Student app cat regno"

    assert_text "Student app cat regno was successfully created"
    click_on "Back"
  end

  test "updating a Student app cat regno" do
    visit student_app_cat_regnos_url
    click_on "Edit", match: :first

    fill_in "Firstname", with: @student_app_cat_regno.firstname
    fill_in "Lastname", with: @student_app_cat_regno.lastname
    fill_in "Registrationnumber", with: @student_app_cat_regno.registrationnumber
    click_on "Update Student app cat regno"

    assert_text "Student app cat regno was successfully updated"
    click_on "Back"
  end

  test "destroying a Student app cat regno" do
    visit student_app_cat_regnos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Student app cat regno was successfully destroyed"
  end
end
