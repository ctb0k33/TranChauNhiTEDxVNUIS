require "test_helper"

class EventOperationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event_operation = event_operations(:one)
  end

  test "should get index" do
    get event_operations_url
    assert_response :success
  end

  test "should get new" do
    get new_event_operation_url
    assert_response :success
  end

  test "should create event_operation" do
    assert_difference("EventOperation.count") do
      post event_operations_url, params: { event_operation: { Deadline: @event_operation.Deadline, Description: @event_operation.Description, Note: @event_operation.Note, Person_in_Charge: @event_operation.Person_in_Charge, Status: @event_operation.Status, Task_ID: @event_operation.Task_ID, Task_Name: @event_operation.Task_Name } }
    end

    assert_redirected_to event_operation_url(EventOperation.last)
  end

  test "should show event_operation" do
    get event_operation_url(@event_operation)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_operation_url(@event_operation)
    assert_response :success
  end

  test "should update event_operation" do
    patch event_operation_url(@event_operation), params: { event_operation: { Deadline: @event_operation.Deadline, Description: @event_operation.Description, Note: @event_operation.Note, Person_in_Charge: @event_operation.Person_in_Charge, Status: @event_operation.Status, Task_ID: @event_operation.Task_ID, Task_Name: @event_operation.Task_Name } }
    assert_redirected_to event_operation_url(@event_operation)
  end

  test "should destroy event_operation" do
    assert_difference("EventOperation.count", -1) do
      delete event_operation_url(@event_operation)
    end

    assert_redirected_to event_operations_url
  end
end
