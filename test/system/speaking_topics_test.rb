require "application_system_test_case"

class SpeakingTopicsTest < ApplicationSystemTestCase
  setup do
    @speaking_topic = speaking_topics(:one)
  end

  test "visiting the index" do
    visit speaking_topics_url
    assert_selector "h1", text: "Speaking topics"
  end

  test "should create speaking topic" do
    visit speaking_topics_url
    click_on "New speaking topic"

    fill_in "Description", with: @speaking_topic.Description
    fill_in "Topic id", with: @speaking_topic.Topic_ID
    fill_in "Topic name", with: @speaking_topic.Topic_Name
    fill_in "Video url", with: @speaking_topic.Video_Url
    fill_in "Workspace link", with: @speaking_topic.Workspace_Link
    click_on "Create Speaking topic"

    assert_text "Speaking topic was successfully created"
    click_on "Back"
  end

  test "should update Speaking topic" do
    visit speaking_topic_url(@speaking_topic)
    click_on "Edit this speaking topic", match: :first

    fill_in "Description", with: @speaking_topic.Description
    fill_in "Topic id", with: @speaking_topic.Topic_ID
    fill_in "Topic name", with: @speaking_topic.Topic_Name
    fill_in "Video url", with: @speaking_topic.Video_Url
    fill_in "Workspace link", with: @speaking_topic.Workspace_Link
    click_on "Update Speaking topic"

    assert_text "Speaking topic was successfully updated"
    click_on "Back"
  end

  test "should destroy Speaking topic" do
    visit speaking_topic_url(@speaking_topic)
    click_on "Destroy this speaking topic", match: :first

    assert_text "Speaking topic was successfully destroyed"
  end
end
