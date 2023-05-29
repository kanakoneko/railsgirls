require "test_helper"

class Idea2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @idea2 = idea2s(:one)
  end

  test "should get index" do
    get idea2s_url
    assert_response :success
  end

  test "should get new" do
    get new_idea2_url
    assert_response :success
  end

  test "should create idea2" do
    assert_difference("Idea2.count") do
      post idea2s_url, params: { idea2: { description: @idea2.description, name: @idea2.name, picture: @idea2.picture, table: @idea2.table } }
    end

    assert_redirected_to idea2_url(Idea2.last)
  end

  test "should show idea2" do
    get idea2_url(@idea2)
    assert_response :success
  end

  test "should get edit" do
    get edit_idea2_url(@idea2)
    assert_response :success
  end

  test "should update idea2" do
    patch idea2_url(@idea2), params: { idea2: { description: @idea2.description, name: @idea2.name, picture: @idea2.picture, table: @idea2.table } }
    assert_redirected_to idea2_url(@idea2)
  end

  test "should destroy idea2" do
    assert_difference("Idea2.count", -1) do
      delete idea2_url(@idea2)
    end

    assert_redirected_to idea2s_url
  end
end
