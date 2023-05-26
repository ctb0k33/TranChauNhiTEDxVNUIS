require "test_helper"

class CommunicationDesignsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @communication_design = communication_designs(:one)
  end

  test "should get index" do
    get communication_designs_url
    assert_response :success
  end

  test "should get new" do
    get new_communication_design_url
    assert_response :success
  end

  test "should create communication_design" do
    assert_difference("CommunicationDesign.count") do
      post communication_designs_url, params: { communication_design: { Deadline: @communication_design.Deadline, Description: @communication_design.Description, Marcom_ID: @communication_design.Marcom_ID, Note: @communication_design.Note, Person_in_Charge: @communication_design.Person_in_Charge, Task_Name: @communication_design.Task_Name } }
    end

    assert_redirected_to communication_design_url(CommunicationDesign.last)
  end

  test "should show communication_design" do
    get communication_design_url(@communication_design)
    assert_response :success
  end

  test "should get edit" do
    get edit_communication_design_url(@communication_design)
    assert_response :success
  end

  test "should update communication_design" do
    patch communication_design_url(@communication_design), params: { communication_design: { Deadline: @communication_design.Deadline, Description: @communication_design.Description, Marcom_ID: @communication_design.Marcom_ID, Note: @communication_design.Note, Person_in_Charge: @communication_design.Person_in_Charge, Task_Name: @communication_design.Task_Name } }
    assert_redirected_to communication_design_url(@communication_design)
  end

  test "should destroy communication_design" do
    assert_difference("CommunicationDesign.count", -1) do
      delete communication_design_url(@communication_design)
    end

    assert_redirected_to communication_designs_url
  end
end
