require "application_system_test_case"

class NeighborhoodsTest < ApplicationSystemTestCase
  setup do
    @neighborhood = neighborhoods(:one)
  end

  test "visiting the index" do
    visit neighborhoods_url
    assert_selector "h1", text: "Neighborhoods"
  end

  test "creating a Neighborhood" do
    visit neighborhoods_url
    click_on "New Neighborhood"

    fill_in "Code", with: @neighborhood.code
    fill_in "District Area", with: @neighborhood.district_area_id
    fill_in "Latitude", with: @neighborhood.latitude
    fill_in "Longitude", with: @neighborhood.longitude
    fill_in "Name", with: @neighborhood.name
    fill_in "Shape", with: @neighborhood.shape
    fill_in "Upz", with: @neighborhood.upz
    click_on "Create Neighborhood"

    assert_text "Neighborhood was successfully created"
    click_on "Back"
  end

  test "updating a Neighborhood" do
    visit neighborhoods_url
    click_on "Edit", match: :first

    fill_in "Code", with: @neighborhood.code
    fill_in "District Area", with: @neighborhood.district_area_id
    fill_in "Latitude", with: @neighborhood.latitude
    fill_in "Longitude", with: @neighborhood.longitude
    fill_in "Name", with: @neighborhood.name
    fill_in "Shape", with: @neighborhood.shape
    fill_in "Upz", with: @neighborhood.upz
    click_on "Update Neighborhood"

    assert_text "Neighborhood was successfully updated"
    click_on "Back"
  end

  test "destroying a Neighborhood" do
    visit neighborhoods_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Neighborhood was successfully destroyed"
  end
end
