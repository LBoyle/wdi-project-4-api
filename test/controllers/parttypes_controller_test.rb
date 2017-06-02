require 'test_helper'

class ParttypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parttype = parttypes(:one)
  end

  test "should get index" do
    get parttypes_url, as: :json
    assert_response :success
  end

  test "should create parttype" do
    assert_difference('Parttype.count') do
      post parttypes_url, params: { parttype: { description: @parttype.description, parttype: @parttype.parttype } }, as: :json
    end

    assert_response 201
  end

  test "should show parttype" do
    get parttype_url(@parttype), as: :json
    assert_response :success
  end

  test "should update parttype" do
    patch parttype_url(@parttype), params: { parttype: { description: @parttype.description, parttype: @parttype.parttype } }, as: :json
    assert_response 200
  end

  test "should destroy parttype" do
    assert_difference('Parttype.count', -1) do
      delete parttype_url(@parttype), as: :json
    end

    assert_response 204
  end
end
