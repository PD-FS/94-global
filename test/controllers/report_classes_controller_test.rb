require 'test_helper'

class ReportClassesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @report_class = report_classes(:one)
  end

  test "should get index" do
    get report_classes_url
    assert_response :success
  end

  test "should get new" do
    get new_report_class_url
    assert_response :success
  end

  test "should create report_class" do
    assert_difference('ReportClass.count') do
      post report_classes_url, params: { report_class: { icon: @report_class.icon, name: @report_class.name } }
    end

    assert_redirected_to report_class_url(ReportClass.last)
  end

  test "should show report_class" do
    get report_class_url(@report_class)
    assert_response :success
  end

  test "should get edit" do
    get edit_report_class_url(@report_class)
    assert_response :success
  end

  test "should update report_class" do
    patch report_class_url(@report_class), params: { report_class: { icon: @report_class.icon, name: @report_class.name } }
    assert_redirected_to report_class_url(@report_class)
  end

  test "should destroy report_class" do
    assert_difference('ReportClass.count', -1) do
      delete report_class_url(@report_class)
    end

    assert_redirected_to report_classes_url
  end
end
