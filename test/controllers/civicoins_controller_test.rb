require 'test_helper'

class CivicoinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @civicoin = civicoins(:one)
  end

  test "should get index" do
    get civicoins_url
    assert_response :success
  end

  test "should get new" do
    get new_civicoin_url
    assert_response :success
  end

  test "should create civicoin" do
    assert_difference('Civicoin.count') do
      post civicoins_url, params: { civicoin: { amount: @civicoin.amount, app: @civicoin.app, description: @civicoin.description, transaction: @civicoin.transaction, user_id: @civicoin.user_id } }
    end

    assert_redirected_to civicoin_url(Civicoin.last)
  end

  test "should show civicoin" do
    get civicoin_url(@civicoin)
    assert_response :success
  end

  test "should get edit" do
    get edit_civicoin_url(@civicoin)
    assert_response :success
  end

  test "should update civicoin" do
    patch civicoin_url(@civicoin), params: { civicoin: { amount: @civicoin.amount, app: @civicoin.app, description: @civicoin.description, transaction: @civicoin.transaction, user_id: @civicoin.user_id } }
    assert_redirected_to civicoin_url(@civicoin)
  end

  test "should destroy civicoin" do
    assert_difference('Civicoin.count', -1) do
      delete civicoin_url(@civicoin)
    end

    assert_redirected_to civicoins_url
  end
end
