require "test_helper"

class Idea3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @idea3 = idea3s(:one)
  end

  test "should get index" do
    get idea3s_url
    assert_response :success
  end

  test "should get new" do
    get new_idea3_url
    assert_response :success
  end

  test "should create idea3" do
    assert_difference("Idea3.count") do
      post idea3s_url, params: { idea3: { description: @idea3.description, name: @idea3.name, picture: @idea3.picture, price: @idea3.price } }
    end

    assert_redirected_to idea3_url(Idea3.last)
  end

  test "should show idea3" do
    get idea3_url(@idea3)
    assert_response :success
  end

  test "should get edit" do
    get edit_idea3_url(@idea3)
    assert_response :success
  end

  test "should update idea3" do
    patch idea3_url(@idea3), params: { idea3: { description: @idea3.description, name: @idea3.name, picture: @idea3.picture, price: @idea3.price } }
    assert_redirected_to idea3_url(@idea3)
  end

  test "should destroy idea3" do
    assert_difference("Idea3.count", -1) do
      delete idea3_url(@idea3)
    end

    assert_redirected_to idea3s_url
  end
end
