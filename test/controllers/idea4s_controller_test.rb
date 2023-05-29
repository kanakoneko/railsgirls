require "test_helper"

class Idea4sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @idea4 = idea4s(:one)
  end

  test "should get index" do
    get idea4s_url
    assert_response :success
  end

  test "should get new" do
    get new_idea4_url
    assert_response :success
  end

  test "should create idea4" do
    assert_difference("Idea4.count") do
      post idea4s_url, params: { idea4: { description: @idea4.description, name: @idea4.name, picture: @idea4.picture, price: @idea4.price } }
    end

    assert_redirected_to idea4_url(Idea4.last)
  end

  test "should show idea4" do
    get idea4_url(@idea4)
    assert_response :success
  end

  test "should get edit" do
    get edit_idea4_url(@idea4)
    assert_response :success
  end

  test "should update idea4" do
    patch idea4_url(@idea4), params: { idea4: { description: @idea4.description, name: @idea4.name, picture: @idea4.picture, price: @idea4.price } }
    assert_redirected_to idea4_url(@idea4)
  end

  test "should destroy idea4" do
    assert_difference("Idea4.count", -1) do
      delete idea4_url(@idea4)
    end

    assert_redirected_to idea4s_url
  end
end
