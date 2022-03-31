require "test_helper"

class BlaguesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blague = blagues(:one)
  end

  test "should get index" do
    get blagues_url
    assert_response :success
  end

  test "should get new" do
    get new_blague_url
    assert_response :success
  end

  test "should create blague" do
    assert_difference('Blague.count') do
      post blagues_url, params: { blague: { content: @blague.content } }
    end

    assert_redirected_to blague_url(Blague.last)
  end

  test "should show blague" do
    get blague_url(@blague)
    assert_response :success
  end

  test "should get edit" do
    get edit_blague_url(@blague)
    assert_response :success
  end

  test "should update blague" do
    patch blague_url(@blague), params: { blague: { content: @blague.content } }
    assert_redirected_to blague_url(@blague)
  end

  test "should destroy blague" do
    assert_difference('Blague.count', -1) do
      delete blague_url(@blague)
    end

    assert_redirected_to blagues_url
  end
end
