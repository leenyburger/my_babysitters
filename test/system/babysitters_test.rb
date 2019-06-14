require "application_system_test_case"

class BabysittersTest < ApplicationSystemTestCase
  setup do
    @babysitter = babysitters(:one)
  end

  test "visiting the index" do
    visit babysitters_url
    assert_selector "h1", text: "Babysitters"
  end

  test "creating a Babysitter" do
    visit babysitters_url
    click_on "New Babysitter"

    click_on "Create Babysitter"

    assert_text "Babysitter was successfully created"
    click_on "Back"
  end

  test "updating a Babysitter" do
    visit babysitters_url
    click_on "Edit", match: :first

    click_on "Update Babysitter"

    assert_text "Babysitter was successfully updated"
    click_on "Back"
  end

  test "destroying a Babysitter" do
    visit babysitters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Babysitter was successfully destroyed"
  end
end
