require "application_system_test_case"

class EmployeeRsTest < ApplicationSystemTestCase
  setup do
    @employee_r = employee_rs(:one)
  end

  test "visiting the index" do
    visit employee_rs_url
    assert_selector "h1", text: "Employee rs"
  end

  test "should create employee r" do
    visit employee_rs_url
    click_on "New employee r"

    fill_in "Age", with: @employee_r.age
    fill_in "Company", with: @employee_r.company_id
    fill_in "Name", with: @employee_r.name
    fill_in "Salary", with: @employee_r.salary
    click_on "Create Employee r"

    assert_text "Employee r was successfully created"
    click_on "Back"
  end

  test "should update Employee r" do
    visit employee_r_url(@employee_r)
    click_on "Edit this employee r", match: :first

    fill_in "Age", with: @employee_r.age
    fill_in "Company", with: @employee_r.company_id
    fill_in "Name", with: @employee_r.name
    fill_in "Salary", with: @employee_r.salary
    click_on "Update Employee r"

    assert_text "Employee r was successfully updated"
    click_on "Back"
  end

  test "should destroy Employee r" do
    visit employee_r_url(@employee_r)
    click_on "Destroy this employee r", match: :first

    assert_text "Employee r was successfully destroyed"
  end
end
