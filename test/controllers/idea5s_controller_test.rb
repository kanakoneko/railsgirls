require "test_helper"

class Idea5sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @idea5 = idea5s(:one)
  end

  test "should get index" do
    get idea5s_url
    assert_response :success
  end

  test "should get new" do
    get new_idea5_url
    assert_response :success
  end

  test "should create idea5" do
    assert_difference("Idea5.count") do
      post idea5s_url, params: { idea5: { description: @idea5.description, name: @idea5.name, picture: @idea5.picture, price: @idea5.price } }
    end

    assert_redirected_to idea5_url(Idea5.last)
  end

  test "should show idea5" do
    get idea5_url(@idea5)
    assert_response :success
  end

  test "should get edit" do
    get edit_idea5_url(@idea5)
    assert_response :success
  end

  test "should update idea5" do
    patch idea5_url(@idea5), params: { idea5: { description: @idea5.description, name: @idea5.name, picture: @idea5.picture, price: @idea5.price } }
    assert_redirected_to idea5_url(@idea5)
  end

  test "should destroy idea5" do
    assert_difference("Idea5.count", -1) do
      delete idea5_url(@idea5)
    end

    assert_redirected_to idea5s_url
  end
end
