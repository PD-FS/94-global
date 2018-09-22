require "application_system_test_case"

class DeliveredAwardsTest < ApplicationSystemTestCase
  setup do
    @delivered_award = delivered_awards(:one)
  end

  test "visiting the index" do
    visit delivered_awards_url
    assert_selector "h1", text: "Delivered Awards"
  end

  test "creating a Delivered award" do
    visit delivered_awards_url
    click_on "New Delivered Award"

    fill_in "Award", with: @delivered_award.award_id
    fill_in "User", with: @delivered_award.user_id
    click_on "Create Delivered award"

    assert_text "Delivered award was successfully created"
    click_on "Back"
  end

  test "updating a Delivered award" do
    visit delivered_awards_url
    click_on "Edit", match: :first

    fill_in "Award", with: @delivered_award.award_id
    fill_in "User", with: @delivered_award.user_id
    click_on "Update Delivered award"

    assert_text "Delivered award was successfully updated"
    click_on "Back"
  end

  test "destroying a Delivered award" do
    visit delivered_awards_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Delivered award was successfully destroyed"
  end
end
