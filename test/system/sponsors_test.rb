require "application_system_test_case"

class SponsorsTest < ApplicationSystemTestCase
  setup do
    @sponsor = sponsors(:one)
  end

  test "visiting the index" do
    visit sponsors_url
    assert_selector "h1", text: "Sponsors"
  end

  test "should create sponsor" do
    visit sponsors_url
    click_on "New sponsor"

    fill_in "Address", with: @sponsor.Address
    fill_in "Contact number", with: @sponsor.Contact_Number
    fill_in "Email", with: @sponsor.Email
    fill_in "Note", with: @sponsor.Note
    fill_in "Person in charge", with: @sponsor.Person_in_Charge
    fill_in "Sponsor", with: @sponsor.Sponsor
    fill_in "Sponsor id", with: @sponsor.Sponsor_ID
    fill_in "Sponsor type", with: @sponsor.Sponsor_Type
    fill_in "Sponsorship level", with: @sponsor.Sponsorship_Level
    fill_in "Website link", with: @sponsor.Website_Link
    click_on "Create Sponsor"

    assert_text "Sponsor was successfully created"
    click_on "Back"
  end

  test "should update Sponsor" do
    visit sponsor_url(@sponsor)
    click_on "Edit this sponsor", match: :first

    fill_in "Address", with: @sponsor.Address
    fill_in "Contact number", with: @sponsor.Contact_Number
    fill_in "Email", with: @sponsor.Email
    fill_in "Note", with: @sponsor.Note
    fill_in "Person in charge", with: @sponsor.Person_in_Charge
    fill_in "Sponsor", with: @sponsor.Sponsor
    fill_in "Sponsor id", with: @sponsor.Sponsor_ID
    fill_in "Sponsor type", with: @sponsor.Sponsor_Type
    fill_in "Sponsorship level", with: @sponsor.Sponsorship_Level
    fill_in "Website link", with: @sponsor.Website_Link
    click_on "Update Sponsor"

    assert_text "Sponsor was successfully updated"
    click_on "Back"
  end

  test "should destroy Sponsor" do
    visit sponsor_url(@sponsor)
    click_on "Destroy this sponsor", match: :first

    assert_text "Sponsor was successfully destroyed"
  end
end
