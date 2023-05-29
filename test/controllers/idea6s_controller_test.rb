require "test_helper"

class Idea6sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @idea6 = idea6s(:one)
  end

  test "should get index" do
    get idea6s_url
    assert_response :success
  end

  test "should get new" do
    get new_idea6_url
    assert_response :success
  end

  test "should create idea6" do
    assert_difference("Idea6.count") do
      post idea6s_url, params: { idea6: { aaa: @idea6.aaa, description: @idea6.description, eee: @idea6.eee, kkk: @idea6.kkk, name: @idea6.name, picture: @idea6.picture, price: @idea6.price, table: @idea6.table } }
    end

    assert_redirected_to idea6_url(Idea6.last)
  end

  test "should show idea6" do
    get idea6_url(@idea6)
    assert_response :success
  end

  test "should get edit" do
    get edit_idea6_url(@idea6)
    assert_response :success
  end

  test "should update idea6" do
    patch idea6_url(@idea6), params: { idea6: { aaa: @idea6.aaa, description: @idea6.description, eee: @idea6.eee, kkk: @idea6.kkk, name: @idea6.name, picture: @idea6.picture, price: @idea6.price, table: @idea6.table } }
    assert_redirected_to idea6_url(@idea6)
  end

  test "should destroy idea6" do
    assert_difference("Idea6.count", -1) do
      delete idea6_url(@idea6)
    end

    assert_redirected_to idea6s_url
  end
end
