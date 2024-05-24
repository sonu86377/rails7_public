require "test_helper"

class EmployeeRsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employee_r = employee_rs(:one)
  end

  test "should get index" do
    get employee_rs_url
    assert_response :success
  end

  test "should get new" do
    get new_employee_r_url
    assert_response :success
  end

  test "should create employee_r" do
    assert_difference("EmployeeR.count") do
      post employee_rs_url, params: { employee_r: { age: @employee_r.age, company_id: @employee_r.company_id, name: @employee_r.name, salary: @employee_r.salary } }
    end

    assert_redirected_to employee_r_url(EmployeeR.last)
  end

  test "should show employee_r" do
    get employee_r_url(@employee_r)
    assert_response :success
  end

  test "should get edit" do
    get edit_employee_r_url(@employee_r)
    assert_response :success
  end

  test "should update employee_r" do
    patch employee_r_url(@employee_r), params: { employee_r: { age: @employee_r.age, company_id: @employee_r.company_id, name: @employee_r.name, salary: @employee_r.salary } }
    assert_redirected_to employee_r_url(@employee_r)
  end

  test "should destroy employee_r" do
    assert_difference("EmployeeR.count", -1) do
      delete employee_r_url(@employee_r)
    end

    assert_redirected_to employee_rs_url
  end
end
