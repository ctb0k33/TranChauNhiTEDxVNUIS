require "test_helper"

class SpeakingTopicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @speaking_topic = speaking_topics(:one)
  end

  test "should get index" do
    get speaking_topics_url
    assert_response :success
  end

  test "should get new" do
    get new_speaking_topic_url
    assert_response :success
  end

  test "should create speaking_topic" do
    assert_difference("SpeakingTopic.count") do
      post speaking_topics_url, params: { speaking_topic: { Description: @speaking_topic.Description, Topic_ID: @speaking_topic.Topic_ID, Topic_Name: @speaking_topic.Topic_Name, Video_Url: @speaking_topic.Video_Url, Workspace_Link: @speaking_topic.Workspace_Link } }
    end

    assert_redirected_to speaking_topic_url(SpeakingTopic.last)
  end

  test "should show speaking_topic" do
    get speaking_topic_url(@speaking_topic)
    assert_response :success
  end

  test "should get edit" do
    get edit_speaking_topic_url(@speaking_topic)
    assert_response :success
  end

  test "should update speaking_topic" do
    patch speaking_topic_url(@speaking_topic), params: { speaking_topic: { Description: @speaking_topic.Description, Topic_ID: @speaking_topic.Topic_ID, Topic_Name: @speaking_topic.Topic_Name, Video_Url: @speaking_topic.Video_Url, Workspace_Link: @speaking_topic.Workspace_Link } }
    assert_redirected_to speaking_topic_url(@speaking_topic)
  end

  test "should destroy speaking_topic" do
    assert_difference("SpeakingTopic.count", -1) do
      delete speaking_topic_url(@speaking_topic)
    end

    assert_redirected_to speaking_topics_url
  end
end
