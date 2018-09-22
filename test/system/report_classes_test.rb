require "application_system_test_case"

class ReportClassesTest < ApplicationSystemTestCase
  setup do
    @report_class = report_classes(:one)
  end

  test "visiting the index" do
    visit report_classes_url
    assert_selector "h1", text: "Report Classes"
  end

  test "creating a Report class" do
    visit report_classes_url
    click_on "New Report Class"

    fill_in "Icon", with: @report_class.icon
    fill_in "Name", with: @report_class.name
    click_on "Create Report class"

    assert_text "Report class was successfully created"
    click_on "Back"
  end

  test "updating a Report class" do
    visit report_classes_url
    click_on "Edit", match: :first

    fill_in "Icon", with: @report_class.icon
    fill_in "Name", with: @report_class.name
    click_on "Update Report class"

    assert_text "Report class was successfully updated"
    click_on "Back"
  end

  test "destroying a Report class" do
    visit report_classes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Report class was successfully destroyed"
  end
end
