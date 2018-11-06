require "application_system_test_case"

class DuelistsTest < ApplicationSystemTestCase
  setup do
    @duelist = duelists(:one)
  end

  test "visiting the index" do
    visit duelists_url
    assert_selector "h1", text: "Duelists"
  end

  test "creating a Duelist" do
    visit duelists_url
    click_on "New Duelist"

    fill_in "Age", with: @duelist.age
    fill_in "Favourite Card", with: @duelist.favourite_card
    fill_in "Name", with: @duelist.name
    fill_in "Picture", with: @duelist.picture
    fill_in "Rating", with: @duelist.rating
    fill_in "User", with: @duelist.user_id
    click_on "Create Duelist"

    assert_text "Duelist was successfully created"
    click_on "Back"
  end

  test "updating a Duelist" do
    visit duelists_url
    click_on "Edit", match: :first

    fill_in "Age", with: @duelist.age
    fill_in "Favourite Card", with: @duelist.favourite_card
    fill_in "Name", with: @duelist.name
    fill_in "Picture", with: @duelist.picture
    fill_in "Rating", with: @duelist.rating
    fill_in "User", with: @duelist.user_id
    click_on "Update Duelist"

    assert_text "Duelist was successfully updated"
    click_on "Back"
  end

  test "destroying a Duelist" do
    visit duelists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Duelist was successfully destroyed"
  end
end
