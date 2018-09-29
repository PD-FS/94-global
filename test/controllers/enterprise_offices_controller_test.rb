require 'test_helper'

class EnterpriseOfficesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @enterprise_office = enterprise_offices(:one)
  end

  test "should get index" do
    get enterprise_offices_url
    assert_response :success
  end

  test "should get new" do
    get new_enterprise_office_url
    assert_response :success
  end

  test "should create enterprise_office" do
    assert_difference('EnterpriseOffice.count') do
      post enterprise_offices_url, params: { enterprise_office: { address: @enterprise_office.address, enterprise_id: @enterprise_office.enterprise_id, latitude: @enterprise_office.latitude, longitude: @enterprise_office.longitude, name: @enterprise_office.name, phone: @enterprise_office.phone } }
    end

    assert_redirected_to enterprise_office_url(EnterpriseOffice.last)
  end

  test "should show enterprise_office" do
    get enterprise_office_url(@enterprise_office)
    assert_response :success
  end

  test "should get edit" do
    get edit_enterprise_office_url(@enterprise_office)
    assert_response :success
  end

  test "should update enterprise_office" do
    patch enterprise_office_url(@enterprise_office), params: { enterprise_office: { address: @enterprise_office.address, enterprise_id: @enterprise_office.enterprise_id, latitude: @enterprise_office.latitude, longitude: @enterprise_office.longitude, name: @enterprise_office.name, phone: @enterprise_office.phone } }
    assert_redirected_to enterprise_office_url(@enterprise_office)
  end

  test "should destroy enterprise_office" do
    assert_difference('EnterpriseOffice.count', -1) do
      delete enterprise_office_url(@enterprise_office)
    end

    assert_redirected_to enterprise_offices_url
  end
end
