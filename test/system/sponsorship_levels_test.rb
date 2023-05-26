require "application_system_test_case"

class SponsorshipLevelsTest < ApplicationSystemTestCase
  setup do
    @sponsorship_level = sponsorship_levels(:one)
  end

  test "visiting the index" do
    visit sponsorship_levels_url
    assert_selector "h1", text: "Sponsorship levels"
  end

  test "should create sponsorship level" do
    visit sponsorship_levels_url
    click_on "New sponsorship level"

    fill_in "Description", with: @sponsorship_level.Description
    fill_in "Level id", with: @sponsorship_level.Level_ID
    fill_in "Sponsorship level", with: @sponsorship_level.Sponsorship_Level
    fill_in "Value", with: @sponsorship_level.Value
    click_on "Create Sponsorship level"

    assert_text "Sponsorship level was successfully created"
    click_on "Back"
  end

  test "should update Sponsorship level" do
    visit sponsorship_level_url(@sponsorship_level)
    click_on "Edit this sponsorship level", match: :first

    fill_in "Description", with: @sponsorship_level.Description
    fill_in "Level id", with: @sponsorship_level.Level_ID
    fill_in "Sponsorship level", with: @sponsorship_level.Sponsorship_Level
    fill_in "Value", with: @sponsorship_level.Value
    click_on "Update Sponsorship level"

    assert_text "Sponsorship level was successfully updated"
    click_on "Back"
  end

  test "should destroy Sponsorship level" do
    visit sponsorship_level_url(@sponsorship_level)
    click_on "Destroy this sponsorship level", match: :first

    assert_text "Sponsorship level was successfully destroyed"
  end
end
