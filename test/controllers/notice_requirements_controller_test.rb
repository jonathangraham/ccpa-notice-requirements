require 'test_helper'

class NoticeRequirementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @notice_requirement = notice_requirements(:one)
  end

  test "should get index" do
    get notice_requirements_url
    assert_response :success
  end

  test "should get new" do
    get new_notice_requirement_url
    assert_response :success
  end

  test "should create notice_requirement" do
    assert_difference('NoticeRequirement.count') do
      post notice_requirements_url, params: { notice_requirement: {  } }
    end

    assert_redirected_to notice_requirement_url(NoticeRequirement.last)
  end

  test "should show notice_requirement" do
    get notice_requirement_url(@notice_requirement)
    assert_response :success
  end

  test "should get edit" do
    get edit_notice_requirement_url(@notice_requirement)
    assert_response :success
  end

  test "should update notice_requirement" do
    patch notice_requirement_url(@notice_requirement), params: { notice_requirement: {  } }
    assert_redirected_to notice_requirement_url(@notice_requirement)
  end

  test "should destroy notice_requirement" do
    assert_difference('NoticeRequirement.count', -1) do
      delete notice_requirement_url(@notice_requirement)
    end

    assert_redirected_to notice_requirements_url
  end
end
