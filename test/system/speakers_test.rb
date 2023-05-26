require "application_system_test_case"

class SpeakersTest < ApplicationSystemTestCase
  setup do
    @speaker = speakers(:one)
  end

  test "visiting the index" do
    visit speakers_url
    assert_selector "h1", text: "Speakers"
  end

  test "should create speaker" do
    visit speakers_url
    click_on "New speaker"

    fill_in "Address", with: @speaker.Address
    fill_in "Bio", with: @speaker.Bio
    fill_in "Contact number", with: @speaker.Contact_Number
    fill_in "Dob", with: @speaker.DOB
    fill_in "Email", with: @speaker.Email
    fill_in "Note", with: @speaker.Note
    fill_in "Person in charge", with: @speaker.Person_in_Charge
    fill_in "Personal id", with: @speaker.Personal_ID
    fill_in "Social media link", with: @speaker.Social_Media_Link
    fill_in "Speaker id", with: @speaker.Speaker_ID
    fill_in "Speaker name", with: @speaker.Speaker_Name
    fill_in "Topic name", with: @speaker.Topic_Name
    click_on "Create Speaker"

    assert_text "Speaker was successfully created"
    click_on "Back"
  end

  test "should update Speaker" do
    visit speaker_url(@speaker)
    click_on "Edit this speaker", match: :first

    fill_in "Address", with: @speaker.Address
    fill_in "Bio", with: @speaker.Bio
    fill_in "Contact number", with: @speaker.Contact_Number
    fill_in "Dob", with: @speaker.DOB
    fill_in "Email", with: @speaker.Email
    fill_in "Note", with: @speaker.Note
    fill_in "Person in charge", with: @speaker.Person_in_Charge
    fill_in "Personal id", with: @speaker.Personal_ID
    fill_in "Social media link", with: @speaker.Social_Media_Link
    fill_in "Speaker id", with: @speaker.Speaker_ID
    fill_in "Speaker name", with: @speaker.Speaker_Name
    fill_in "Topic name", with: @speaker.Topic_Name
    click_on "Update Speaker"

    assert_text "Speaker was successfully updated"
    click_on "Back"
  end

  test "should destroy Speaker" do
    visit speaker_url(@speaker)
    click_on "Destroy this speaker", match: :first

    assert_text "Speaker was successfully destroyed"
  end
end
