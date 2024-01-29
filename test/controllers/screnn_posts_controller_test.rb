require "test_helper"

class ScrennPostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @screnn_post = screnn_posts(:one)
  end

  test "should get index" do
    get screnn_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_screnn_post_url
    assert_response :success
  end

  test "should create screnn_post" do
    assert_difference("ScrennPost.count") do
      post screnn_posts_url, params: { screnn_post: { post_id: @screnn_post.post_id, screen_id: @screnn_post.screen_id } }
    end

    assert_redirected_to screnn_post_url(ScrennPost.last)
  end

  test "should show screnn_post" do
    get screnn_post_url(@screnn_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_screnn_post_url(@screnn_post)
    assert_response :success
  end

  test "should update screnn_post" do
    patch screnn_post_url(@screnn_post), params: { screnn_post: { post_id: @screnn_post.post_id, screen_id: @screnn_post.screen_id } }
    assert_redirected_to screnn_post_url(@screnn_post)
  end

  test "should destroy screnn_post" do
    assert_difference("ScrennPost.count", -1) do
      delete screnn_post_url(@screnn_post)
    end

    assert_redirected_to screnn_posts_url
  end
end
