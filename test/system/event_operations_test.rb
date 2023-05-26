require "application_system_test_case"

class EventOperationsTest < ApplicationSystemTestCase
  setup do
    @event_operation = event_operations(:one)
  end

  test "visiting the index" do
    visit event_operations_url
    assert_selector "h1", text: "Event operations"
  end

  test "should create event operation" do
    visit event_operations_url
    click_on "New event operation"

    fill_in "Deadline", with: @event_operation.Deadline
    fill_in "Description", with: @event_operation.Description
    fill_in "Note", with: @event_operation.Note
    fill_in "Person in charge", with: @event_operation.Person_in_Charge
    fill_in "Status", with: @event_operation.Status
    fill_in "Task id", with: @event_operation.Task_ID
    fill_in "Task name", with: @event_operation.Task_Name
    click_on "Create Event operation"

    assert_text "Event operation was successfully created"
    click_on "Back"
  end

  test "should update Event operation" do
    visit event_operation_url(@event_operation)
    click_on "Edit this event operation", match: :first

    fill_in "Deadline", with: @event_operation.Deadline
    fill_in "Description", with: @event_operation.Description
    fill_in "Note", with: @event_operation.Note
    fill_in "Person in charge", with: @event_operation.Person_in_Charge
    fill_in "Status", with: @event_operation.Status
    fill_in "Task id", with: @event_operation.Task_ID
    fill_in "Task name", with: @event_operation.Task_Name
    click_on "Update Event operation"

    assert_text "Event operation was successfully updated"
    click_on "Back"
  end

  test "should destroy Event operation" do
    visit event_operation_url(@event_operation)
    click_on "Destroy this event operation", match: :first

    assert_text "Event operation was successfully destroyed"
  end
end
