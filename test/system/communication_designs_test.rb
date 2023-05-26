require "application_system_test_case"

class CommunicationDesignsTest < ApplicationSystemTestCase
  setup do
    @communication_design = communication_designs(:one)
  end

  test "visiting the index" do
    visit communication_designs_url
    assert_selector "h1", text: "Communication designs"
  end

  test "should create communication design" do
    visit communication_designs_url
    click_on "New communication design"

    fill_in "Deadline", with: @communication_design.Deadline
    fill_in "Description", with: @communication_design.Description
    fill_in "Marcom id", with: @communication_design.Marcom_ID
    fill_in "Note", with: @communication_design.Note
    fill_in "Person in charge", with: @communication_design.Person_in_Charge
    fill_in "Task name", with: @communication_design.Task_Name
    click_on "Create Communication design"

    assert_text "Communication design was successfully created"
    click_on "Back"
  end

  test "should update Communication design" do
    visit communication_design_url(@communication_design)
    click_on "Edit this communication design", match: :first

    fill_in "Deadline", with: @communication_design.Deadline
    fill_in "Description", with: @communication_design.Description
    fill_in "Marcom id", with: @communication_design.Marcom_ID
    fill_in "Note", with: @communication_design.Note
    fill_in "Person in charge", with: @communication_design.Person_in_Charge
    fill_in "Task name", with: @communication_design.Task_Name
    click_on "Update Communication design"

    assert_text "Communication design was successfully updated"
    click_on "Back"
  end

  test "should destroy Communication design" do
    visit communication_design_url(@communication_design)
    click_on "Destroy this communication design", match: :first

    assert_text "Communication design was successfully destroyed"
  end
end
