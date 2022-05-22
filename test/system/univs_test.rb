require "application_system_test_case"

class UnivsTest < ApplicationSystemTestCase
  setup do
    @univ = univs(:one)
  end

  test "visiting the index" do
    visit univs_url
    assert_selector "h1", text: "Univs"
  end

  test "should create univ" do
    visit univs_url
    click_on "New univ"

    fill_in "Address", with: @univ.address
    fill_in "City", with: @univ.city
    fill_in "Country", with: @univ.country
    fill_in "Name", with: @univ.name
    fill_in "Website", with: @univ.website
    click_on "Create Univ"

    assert_text "Univ was successfully created"
    click_on "Back"
  end

  test "should update Univ" do
    visit univ_url(@univ)
    click_on "Edit this univ", match: :first

    fill_in "Address", with: @univ.address
    fill_in "City", with: @univ.city
    fill_in "Country", with: @univ.country
    fill_in "Name", with: @univ.name
    fill_in "Website", with: @univ.website
    click_on "Update Univ"

    assert_text "Univ was successfully updated"
    click_on "Back"
  end

  test "should destroy Univ" do
    visit univ_url(@univ)
    click_on "Destroy this univ", match: :first

    assert_text "Univ was successfully destroyed"
  end
end
