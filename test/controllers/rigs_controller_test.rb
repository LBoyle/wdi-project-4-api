require 'test_helper'

class RigsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rig = rigs(:one)
  end

  test "should get index" do
    get rigs_url, as: :json
    assert_response :success
  end

  test "should create rig" do
    assert_difference('Rig.count') do
      post rigs_url, params: { rig: { description: @rig.description, user_id: @rig.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show rig" do
    get rig_url(@rig), as: :json
    assert_response :success
  end

  test "should update rig" do
    patch rig_url(@rig), params: { rig: { description: @rig.description, user_id: @rig.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy rig" do
    assert_difference('Rig.count', -1) do
      delete rig_url(@rig), as: :json
    end

    assert_response 204
  end
end
