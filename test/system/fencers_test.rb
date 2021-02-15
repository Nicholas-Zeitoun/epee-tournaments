require "application_system_test_case"

class FencersTest < ApplicationSystemTestCase
  setup do
    @fencer = fencers(:one)
  end

  test "visiting the index" do
    visit fencers_url
    assert_selector "h1", text: "Fencers"
  end

  test "creating a Fencer" do
    visit fencers_url
    click_on "New Fencer"

    fill_in "Name", with: @fencer.name
    fill_in "Ranking", with: @fencer.ranking
    click_on "Create Fencer"

    assert_text "Fencer was successfully created"
    click_on "Back"
  end

  test "updating a Fencer" do
    visit fencers_url
    click_on "Edit", match: :first

    fill_in "Name", with: @fencer.name
    fill_in "Ranking", with: @fencer.ranking
    click_on "Update Fencer"

    assert_text "Fencer was successfully updated"
    click_on "Back"
  end

  test "destroying a Fencer" do
    visit fencers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fencer was successfully destroyed"
  end
end
