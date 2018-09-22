require 'test_helper'

class ReportParametersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @report_parameter = report_parameters(:one)
  end

  test "should get index" do
    get report_parameters_url
    assert_response :success
  end

  test "should get new" do
    get new_report_parameter_url
    assert_response :success
  end

  test "should create report_parameter" do
    assert_difference('ReportParameter.count') do
      post report_parameters_url, params: { report_parameter: { dataType: @report_parameter.dataType, html_visualization: @report_parameter.html_visualization, name: @report_parameter.name, optional: @report_parameter.optional, referenced_table: @report_parameter.referenced_table, report_type_id: @report_parameter.report_type_id } }
    end

    assert_redirected_to report_parameter_url(ReportParameter.last)
  end

  test "should show report_parameter" do
    get report_parameter_url(@report_parameter)
    assert_response :success
  end

  test "should get edit" do
    get edit_report_parameter_url(@report_parameter)
    assert_response :success
  end

  test "should update report_parameter" do
    patch report_parameter_url(@report_parameter), params: { report_parameter: { dataType: @report_parameter.dataType, html_visualization: @report_parameter.html_visualization, name: @report_parameter.name, optional: @report_parameter.optional, referenced_table: @report_parameter.referenced_table, report_type_id: @report_parameter.report_type_id } }
    assert_redirected_to report_parameter_url(@report_parameter)
  end

  test "should destroy report_parameter" do
    assert_difference('ReportParameter.count', -1) do
      delete report_parameter_url(@report_parameter)
    end

    assert_redirected_to report_parameters_url
  end
end
