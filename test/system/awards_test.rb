require "application_system_test_case"

class AwardsTest < ApplicationSystemTestCase
  setup do
    @award = awards(:one)
  end

  test "visiting the index" do
    visit awards_url
    assert_selector "h1", text: "Awards"
  end

  test "creating a Award" do
    visit awards_url
    click_on "New Award"

    fill_in "Civicoins", with: @award.civicoins
    fill_in "Description", with: @award.description
    fill_in "Enddate", with: @award.endDate
    fill_in "Enterprise", with: @award.enterprise_id
    fill_in "Maximumage", with: @award.maximumAge
    fill_in "Minimumage", with: @award.minimumAge
    fill_in "Name", with: @award.name
    fill_in "Picture", with: @award.picture
    fill_in "Rate", with: @award.rate
    fill_in "Startdate", with: @award.startDate
    fill_in "Stock", with: @award.stock
    fill_in "Terms", with: @award.terms
    click_on "Create Award"

    assert_text "Award was successfully created"
    click_on "Back"
  end

  test "updating a Award" do
    visit awards_url
    click_on "Edit", match: :first

    fill_in "Civicoins", with: @award.civicoins
    fill_in "Description", with: @award.description
    fill_in "Enddate", with: @award.endDate
    fill_in "Enterprise", with: @award.enterprise_id
    fill_in "Maximumage", with: @award.maximumAge
    fill_in "Minimumage", with: @award.minimumAge
    fill_in "Name", with: @award.name
    fill_in "Picture", with: @award.picture
    fill_in "Rate", with: @award.rate
    fill_in "Startdate", with: @award.startDate
    fill_in "Stock", with: @award.stock
    fill_in "Terms", with: @award.terms
    click_on "Update Award"

    assert_text "Award was successfully updated"
    click_on "Back"
  end

  test "destroying a Award" do
    visit awards_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Award was successfully destroyed"
  end
end
