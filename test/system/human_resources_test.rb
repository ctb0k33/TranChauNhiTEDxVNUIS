require "application_system_test_case"

class HumanResourcesTest < ApplicationSystemTestCase
  setup do
    @human_resource = human_resources(:one)
  end

  test "visiting the index" do
    visit human_resources_url
    assert_selector "h1", text: "Human resources"
  end

  test "should create human resource" do
    visit human_resources_url
    click_on "New human resource"

    fill_in "Bio", with: @human_resource.Bio
    fill_in "Contact number", with: @human_resource.Contact_Number
    fill_in "Department", with: @human_resource.Department
    fill_in "Description", with: @human_resource.Description
    fill_in "Email", with: @human_resource.Email
    fill_in "Member id", with: @human_resource.Member_ID
    fill_in "Member name", with: @human_resource.Member_Name
    fill_in "Position", with: @human_resource.Position
    click_on "Create Human resource"

    assert_text "Human resource was successfully created"
    click_on "Back"
  end

  test "should update Human resource" do
    visit human_resource_url(@human_resource)
    click_on "Edit this human resource", match: :first

    fill_in "Bio", with: @human_resource.Bio
    fill_in "Contact number", with: @human_resource.Contact_Number
    fill_in "Department", with: @human_resource.Department
    fill_in "Description", with: @human_resource.Description
    fill_in "Email", with: @human_resource.Email
    fill_in "Member id", with: @human_resource.Member_ID
    fill_in "Member name", with: @human_resource.Member_Name
    fill_in "Position", with: @human_resource.Position
    click_on "Update Human resource"

    assert_text "Human resource was successfully updated"
    click_on "Back"
  end

  test "should destroy Human resource" do
    visit human_resource_url(@human_resource)
    click_on "Destroy this human resource", match: :first

    assert_text "Human resource was successfully destroyed"
  end
end
