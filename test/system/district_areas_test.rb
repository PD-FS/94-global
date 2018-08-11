require "application_system_test_case"

class DistrictAreasTest < ApplicationSystemTestCase
  setup do
    @district_area = district_areas(:one)
  end

  test "visiting the index" do
    visit district_areas_url
    assert_selector "h1", text: "District Areas"
  end

  test "creating a District area" do
    visit district_areas_url
    click_on "New District Area"

    fill_in "Density", with: @district_area.density
    fill_in "Initialzipcode", with: @district_area.initialZipCode
    fill_in "Lastzipcode", with: @district_area.lastZipCode
    fill_in "Name", with: @district_area.name
    fill_in "Population", with: @district_area.population
    fill_in "Surfacearea", with: @district_area.surfaceArea
    click_on "Create District area"

    assert_text "District area was successfully created"
    click_on "Back"
  end

  test "updating a District area" do
    visit district_areas_url
    click_on "Edit", match: :first

    fill_in "Density", with: @district_area.density
    fill_in "Initialzipcode", with: @district_area.initialZipCode
    fill_in "Lastzipcode", with: @district_area.lastZipCode
    fill_in "Name", with: @district_area.name
    fill_in "Population", with: @district_area.population
    fill_in "Surfacearea", with: @district_area.surfaceArea
    click_on "Update District area"

    assert_text "District area was successfully updated"
    click_on "Back"
  end

  test "destroying a District area" do
    visit district_areas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "District area was successfully destroyed"
  end
end
