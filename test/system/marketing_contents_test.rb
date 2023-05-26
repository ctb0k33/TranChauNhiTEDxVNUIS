require "application_system_test_case"

class MarketingContentsTest < ApplicationSystemTestCase
  setup do
    @marketing_content = marketing_contents(:one)
  end

  test "visiting the index" do
    visit marketing_contents_url
    assert_selector "h1", text: "Marketing contents"
  end

  test "should create marketing content" do
    visit marketing_contents_url
    click_on "New marketing content"

    fill_in "Content name", with: @marketing_content.Content_Name
    fill_in "Deadline", with: @marketing_content.Deadline
    fill_in "Description", with: @marketing_content.Description
    fill_in "Marcom id", with: @marketing_content.Marcom_ID
    fill_in "Note", with: @marketing_content.Note
    fill_in "Person in charge", with: @marketing_content.Person_in_Charge
    fill_in "Social networking platform", with: @marketing_content.Social_Networking_Platform
    click_on "Create Marketing content"

    assert_text "Marketing content was successfully created"
    click_on "Back"
  end

  test "should update Marketing content" do
    visit marketing_content_url(@marketing_content)
    click_on "Edit this marketing content", match: :first

    fill_in "Content name", with: @marketing_content.Content_Name
    fill_in "Deadline", with: @marketing_content.Deadline
    fill_in "Description", with: @marketing_content.Description
    fill_in "Marcom id", with: @marketing_content.Marcom_ID
    fill_in "Note", with: @marketing_content.Note
    fill_in "Person in charge", with: @marketing_content.Person_in_Charge
    fill_in "Social networking platform", with: @marketing_content.Social_Networking_Platform
    click_on "Update Marketing content"

    assert_text "Marketing content was successfully updated"
    click_on "Back"
  end

  test "should destroy Marketing content" do
    visit marketing_content_url(@marketing_content)
    click_on "Destroy this marketing content", match: :first

    assert_text "Marketing content was successfully destroyed"
  end
end
