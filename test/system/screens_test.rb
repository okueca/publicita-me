require "application_system_test_case"

class ScreensTest < ApplicationSystemTestCase
  setup do
    @screen = screens(:one)
  end

  test "visiting the index" do
    visit screens_url
    assert_selector "h1", text: "Screens"
  end

  test "should create screen" do
    visit screens_url
    click_on "New screen"

    fill_in "Country", with: @screen.country
    fill_in "Description", with: @screen.description
    fill_in "Dimensions", with: @screen.dimensions
    fill_in "Location", with: @screen.location
    fill_in "Name", with: @screen.name
    fill_in "Post", with: @screen.post_id
    fill_in "Status", with: @screen.status
    fill_in "Stream price", with: @screen.stream_price
    click_on "Create Screen"

    assert_text "Screen was successfully created"
    click_on "Back"
  end

  test "should update Screen" do
    visit screen_url(@screen)
    click_on "Edit this screen", match: :first

    fill_in "Country", with: @screen.country
    fill_in "Description", with: @screen.description
    fill_in "Dimensions", with: @screen.dimensions
    fill_in "Location", with: @screen.location
    fill_in "Name", with: @screen.name
    fill_in "Post", with: @screen.post_id
    fill_in "Status", with: @screen.status
    fill_in "Stream price", with: @screen.stream_price
    click_on "Update Screen"

    assert_text "Screen was successfully updated"
    click_on "Back"
  end

  test "should destroy Screen" do
    visit screen_url(@screen)
    click_on "Destroy this screen", match: :first

    assert_text "Screen was successfully destroyed"
  end
end
