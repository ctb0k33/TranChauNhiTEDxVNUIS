require "test_helper"

class SpeakersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @speaker = speakers(:one)
  end

  test "should get index" do
    get speakers_url
    assert_response :success
  end

  test "should get new" do
    get new_speaker_url
    assert_response :success
  end

  test "should create speaker" do
    assert_difference("Speaker.count") do
      post speakers_url, params: { speaker: { Address: @speaker.Address, Bio: @speaker.Bio, Contact_Number: @speaker.Contact_Number, DOB: @speaker.DOB, Email: @speaker.Email, Note: @speaker.Note, Person_in_Charge: @speaker.Person_in_Charge, Personal_ID: @speaker.Personal_ID, Social_Media_Link: @speaker.Social_Media_Link, Speaker_ID: @speaker.Speaker_ID, Speaker_Name: @speaker.Speaker_Name, Topic_Name: @speaker.Topic_Name } }
    end

    assert_redirected_to speaker_url(Speaker.last)
  end

  test "should show speaker" do
    get speaker_url(@speaker)
    assert_response :success
  end

  test "should get edit" do
    get edit_speaker_url(@speaker)
    assert_response :success
  end

  test "should update speaker" do
    patch speaker_url(@speaker), params: { speaker: { Address: @speaker.Address, Bio: @speaker.Bio, Contact_Number: @speaker.Contact_Number, DOB: @speaker.DOB, Email: @speaker.Email, Note: @speaker.Note, Person_in_Charge: @speaker.Person_in_Charge, Personal_ID: @speaker.Personal_ID, Social_Media_Link: @speaker.Social_Media_Link, Speaker_ID: @speaker.Speaker_ID, Speaker_Name: @speaker.Speaker_Name, Topic_Name: @speaker.Topic_Name } }
    assert_redirected_to speaker_url(@speaker)
  end

  test "should destroy speaker" do
    assert_difference("Speaker.count", -1) do
      delete speaker_url(@speaker)
    end

    assert_redirected_to speakers_url
  end
end
