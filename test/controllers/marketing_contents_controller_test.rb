require "test_helper"

class MarketingContentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @marketing_content = marketing_contents(:one)
  end

  test "should get index" do
    get marketing_contents_url
    assert_response :success
  end

  test "should get new" do
    get new_marketing_content_url
    assert_response :success
  end

  test "should create marketing_content" do
    assert_difference("MarketingContent.count") do
      post marketing_contents_url, params: { marketing_content: { Content_Name: @marketing_content.Content_Name, Deadline: @marketing_content.Deadline, Description: @marketing_content.Description, Marcom_ID: @marketing_content.Marcom_ID, Note: @marketing_content.Note, Person_in_Charge: @marketing_content.Person_in_Charge, Social_Networking_Platform: @marketing_content.Social_Networking_Platform } }
    end

    assert_redirected_to marketing_content_url(MarketingContent.last)
  end

  test "should show marketing_content" do
    get marketing_content_url(@marketing_content)
    assert_response :success
  end

  test "should get edit" do
    get edit_marketing_content_url(@marketing_content)
    assert_response :success
  end

  test "should update marketing_content" do
    patch marketing_content_url(@marketing_content), params: { marketing_content: { Content_Name: @marketing_content.Content_Name, Deadline: @marketing_content.Deadline, Description: @marketing_content.Description, Marcom_ID: @marketing_content.Marcom_ID, Note: @marketing_content.Note, Person_in_Charge: @marketing_content.Person_in_Charge, Social_Networking_Platform: @marketing_content.Social_Networking_Platform } }
    assert_redirected_to marketing_content_url(@marketing_content)
  end

  test "should destroy marketing_content" do
    assert_difference("MarketingContent.count", -1) do
      delete marketing_content_url(@marketing_content)
    end

    assert_redirected_to marketing_contents_url
  end
end
