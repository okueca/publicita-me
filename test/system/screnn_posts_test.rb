require "application_system_test_case"

class ScrennPostsTest < ApplicationSystemTestCase
  setup do
    @screnn_post = screnn_posts(:one)
  end

  test "visiting the index" do
    visit screnn_posts_url
    assert_selector "h1", text: "Screnn posts"
  end

  test "should create screnn post" do
    visit screnn_posts_url
    click_on "New screnn post"

    fill_in "Post", with: @screnn_post.post_id
    fill_in "Screen", with: @screnn_post.screen_id
    click_on "Create Screnn post"

    assert_text "Screnn post was successfully created"
    click_on "Back"
  end

  test "should update Screnn post" do
    visit screnn_post_url(@screnn_post)
    click_on "Edit this screnn post", match: :first

    fill_in "Post", with: @screnn_post.post_id
    fill_in "Screen", with: @screnn_post.screen_id
    click_on "Update Screnn post"

    assert_text "Screnn post was successfully updated"
    click_on "Back"
  end

  test "should destroy Screnn post" do
    visit screnn_post_url(@screnn_post)
    click_on "Destroy this screnn post", match: :first

    assert_text "Screnn post was successfully destroyed"
  end
end
