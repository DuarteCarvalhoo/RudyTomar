require "application_system_test_case"

class TablefriendsTest < ApplicationSystemTestCase
  setup do
    @tablefriend = tablefriends(:one)
  end

  test "visiting the index" do
    visit tablefriends_url
    assert_selector "h1", text: "Tablefriends"
  end

  test "should create tablefriend" do
    visit tablefriends_url
    click_on "New tablefriend"

    fill_in "Email", with: @tablefriend.email
    fill_in "First name", with: @tablefriend.first_name
    fill_in "Last name", with: @tablefriend.last_name
    fill_in "Phone", with: @tablefriend.phone
    fill_in "Twitter", with: @tablefriend.twitter
    click_on "Create Tablefriend"

    assert_text "Tablefriend was successfully created"
    click_on "Back"
  end

  test "should update Tablefriend" do
    visit tablefriend_url(@tablefriend)
    click_on "Edit this tablefriend", match: :first

    fill_in "Email", with: @tablefriend.email
    fill_in "First name", with: @tablefriend.first_name
    fill_in "Last name", with: @tablefriend.last_name
    fill_in "Phone", with: @tablefriend.phone
    fill_in "Twitter", with: @tablefriend.twitter
    click_on "Update Tablefriend"

    assert_text "Tablefriend was successfully updated"
    click_on "Back"
  end

  test "should destroy Tablefriend" do
    visit tablefriend_url(@tablefriend)
    click_on "Destroy this tablefriend", match: :first

    assert_text "Tablefriend was successfully destroyed"
  end
end
