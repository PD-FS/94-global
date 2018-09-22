require "application_system_test_case"

class CivicoinsTest < ApplicationSystemTestCase
  setup do
    @civicoin = civicoins(:one)
  end

  test "visiting the index" do
    visit civicoins_url
    assert_selector "h1", text: "Civicoins"
  end

  test "creating a Civicoin" do
    visit civicoins_url
    click_on "New Civicoin"

    fill_in "Amount", with: @civicoin.amount
    fill_in "App", with: @civicoin.app
    fill_in "Description", with: @civicoin.description
    fill_in "Transaction", with: @civicoin.transaction
    fill_in "User", with: @civicoin.user_id
    click_on "Create Civicoin"

    assert_text "Civicoin was successfully created"
    click_on "Back"
  end

  test "updating a Civicoin" do
    visit civicoins_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @civicoin.amount
    fill_in "App", with: @civicoin.app
    fill_in "Description", with: @civicoin.description
    fill_in "Transaction", with: @civicoin.transaction
    fill_in "User", with: @civicoin.user_id
    click_on "Update Civicoin"

    assert_text "Civicoin was successfully updated"
    click_on "Back"
  end

  test "destroying a Civicoin" do
    visit civicoins_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Civicoin was successfully destroyed"
  end
end
