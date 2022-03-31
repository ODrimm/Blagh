require "application_system_test_case"

class BlaguesTest < ApplicationSystemTestCase
  setup do
    @blague = blagues(:one)
  end

  test "visiting the index" do
    visit blagues_url
    assert_selector "h1", text: "Blagues"
  end

  test "creating a Blague" do
    visit blagues_url
    click_on "New Blague"

    fill_in "Content", with: @blague.content
    click_on "Create Blague"

    assert_text "Blague was successfully created"
    click_on "Back"
  end

  test "updating a Blague" do
    visit blagues_url
    click_on "Edit", match: :first

    fill_in "Content", with: @blague.content
    click_on "Update Blague"

    assert_text "Blague was successfully updated"
    click_on "Back"
  end

  test "destroying a Blague" do
    visit blagues_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Blague was successfully destroyed"
  end
end
