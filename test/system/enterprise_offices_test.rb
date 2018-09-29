require "application_system_test_case"

class EnterpriseOfficesTest < ApplicationSystemTestCase
  setup do
    @enterprise_office = enterprise_offices(:one)
  end

  test "visiting the index" do
    visit enterprise_offices_url
    assert_selector "h1", text: "Enterprise Offices"
  end

  test "creating a Enterprise office" do
    visit enterprise_offices_url
    click_on "New Enterprise Office"

    fill_in "Address", with: @enterprise_office.address
    fill_in "Enterprise", with: @enterprise_office.enterprise_id
    fill_in "Latitude", with: @enterprise_office.latitude
    fill_in "Longitude", with: @enterprise_office.longitude
    fill_in "Name", with: @enterprise_office.name
    fill_in "Phone", with: @enterprise_office.phone
    click_on "Create Enterprise office"

    assert_text "Enterprise office was successfully created"
    click_on "Back"
  end

  test "updating a Enterprise office" do
    visit enterprise_offices_url
    click_on "Edit", match: :first

    fill_in "Address", with: @enterprise_office.address
    fill_in "Enterprise", with: @enterprise_office.enterprise_id
    fill_in "Latitude", with: @enterprise_office.latitude
    fill_in "Longitude", with: @enterprise_office.longitude
    fill_in "Name", with: @enterprise_office.name
    fill_in "Phone", with: @enterprise_office.phone
    click_on "Update Enterprise office"

    assert_text "Enterprise office was successfully updated"
    click_on "Back"
  end

  test "destroying a Enterprise office" do
    visit enterprise_offices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Enterprise office was successfully destroyed"
  end
end
