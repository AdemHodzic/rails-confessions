require "application_system_test_case"

class ConfessionsTest < ApplicationSystemTestCase
  setup do
    @confession = confessions(:one)
  end

  test "visiting the index" do
    visit confessions_url
    assert_selector "h1", text: "Confessions"
  end

  test "creating a Confession" do
    visit confessions_url
    click_on "New Confession"

    fill_in "Text", with: @confession.text
    fill_in "Title", with: @confession.title
    click_on "Create Confession"

    assert_text "Confession was successfully created"
    click_on "Back"
  end

  test "updating a Confession" do
    visit confessions_url
    click_on "Edit", match: :first

    fill_in "Text", with: @confession.text
    fill_in "Title", with: @confession.title
    click_on "Update Confession"

    assert_text "Confession was successfully updated"
    click_on "Back"
  end

  test "destroying a Confession" do
    visit confessions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Confession was successfully destroyed"
  end
end
