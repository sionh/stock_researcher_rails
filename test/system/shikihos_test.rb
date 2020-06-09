require "application_system_test_case"

class ShikihosTest < ApplicationSystemTestCase
  setup do
    @shikiho = shikihos(:one)
  end

  test "visiting the index" do
    visit shikihos_url
    assert_selector "h1", text: "Shikihos"
  end

  test "creating a Shikiho" do
    visit shikihos_url
    click_on "New Shikiho"

    click_on "Create Shikiho"

    assert_text "Shikiho was successfully created"
    click_on "Back"
  end

  test "updating a Shikiho" do
    visit shikihos_url
    click_on "Edit", match: :first

    click_on "Update Shikiho"

    assert_text "Shikiho was successfully updated"
    click_on "Back"
  end

  test "destroying a Shikiho" do
    visit shikihos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shikiho was successfully destroyed"
  end
end
