require "application_system_test_case"

class NoticeRequirementsTest < ApplicationSystemTestCase
  setup do
    @notice_requirement = notice_requirements(:one)
  end

  test "visiting the index" do
    visit notice_requirements_url
    assert_selector "h1", text: "Notice Requirements"
  end

  test "creating a Notice requirement" do
    visit notice_requirements_url
    click_on "New Notice Requirement"

    click_on "Create Notice requirement"

    assert_text "Notice requirement was successfully created"
    click_on "Back"
  end

  test "updating a Notice requirement" do
    visit notice_requirements_url
    click_on "Edit", match: :first

    click_on "Update Notice requirement"

    assert_text "Notice requirement was successfully updated"
    click_on "Back"
  end

  test "destroying a Notice requirement" do
    visit notice_requirements_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Notice requirement was successfully destroyed"
  end
end
