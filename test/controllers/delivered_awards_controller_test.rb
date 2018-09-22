require 'test_helper'

class DeliveredAwardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @delivered_award = delivered_awards(:one)
  end

  test "should get index" do
    get delivered_awards_url
    assert_response :success
  end

  test "should get new" do
    get new_delivered_award_url
    assert_response :success
  end

  test "should create delivered_award" do
    assert_difference('DeliveredAward.count') do
      post delivered_awards_url, params: { delivered_award: { award_id: @delivered_award.award_id, user_id: @delivered_award.user_id } }
    end

    assert_redirected_to delivered_award_url(DeliveredAward.last)
  end

  test "should show delivered_award" do
    get delivered_award_url(@delivered_award)
    assert_response :success
  end

  test "should get edit" do
    get edit_delivered_award_url(@delivered_award)
    assert_response :success
  end

  test "should update delivered_award" do
    patch delivered_award_url(@delivered_award), params: { delivered_award: { award_id: @delivered_award.award_id, user_id: @delivered_award.user_id } }
    assert_redirected_to delivered_award_url(@delivered_award)
  end

  test "should destroy delivered_award" do
    assert_difference('DeliveredAward.count', -1) do
      delete delivered_award_url(@delivered_award)
    end

    assert_redirected_to delivered_awards_url
  end
end
