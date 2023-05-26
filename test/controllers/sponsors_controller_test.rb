require "test_helper"

class SponsorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sponsor = sponsors(:one)
  end

  test "should get index" do
    get sponsors_url
    assert_response :success
  end

  test "should get new" do
    get new_sponsor_url
    assert_response :success
  end

  test "should create sponsor" do
    assert_difference("Sponsor.count") do
      post sponsors_url, params: { sponsor: { Address: @sponsor.Address, Contact_Number: @sponsor.Contact_Number, Email: @sponsor.Email, Note: @sponsor.Note, Person_in_Charge: @sponsor.Person_in_Charge, Sponsor: @sponsor.Sponsor, Sponsor_ID: @sponsor.Sponsor_ID, Sponsor_Type: @sponsor.Sponsor_Type, Sponsorship_Level: @sponsor.Sponsorship_Level, Website_Link: @sponsor.Website_Link } }
    end

    assert_redirected_to sponsor_url(Sponsor.last)
  end

  test "should show sponsor" do
    get sponsor_url(@sponsor)
    assert_response :success
  end

  test "should get edit" do
    get edit_sponsor_url(@sponsor)
    assert_response :success
  end

  test "should update sponsor" do
    patch sponsor_url(@sponsor), params: { sponsor: { Address: @sponsor.Address, Contact_Number: @sponsor.Contact_Number, Email: @sponsor.Email, Note: @sponsor.Note, Person_in_Charge: @sponsor.Person_in_Charge, Sponsor: @sponsor.Sponsor, Sponsor_ID: @sponsor.Sponsor_ID, Sponsor_Type: @sponsor.Sponsor_Type, Sponsorship_Level: @sponsor.Sponsorship_Level, Website_Link: @sponsor.Website_Link } }
    assert_redirected_to sponsor_url(@sponsor)
  end

  test "should destroy sponsor" do
    assert_difference("Sponsor.count", -1) do
      delete sponsor_url(@sponsor)
    end

    assert_redirected_to sponsors_url
  end
end
