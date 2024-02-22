require "test_helper"

class FlowersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @flower = flowers(:one)
  end

  test "should get index" do
    get flowers_url
    assert_response :success
  end

  test "should get new" do
    get new_flower_url
    assert_response :success
  end

  test "should create flower" do
    assert_difference("Flower.count") do
      post flowers_url, params: { flower: { blooming: @flower.blooming, color: @flower.color, description: @flower.description, flower_type: @flower.flower_type, image: @flower.image, name: @flower.name, scientific_name: @flower.scientific_name } }
    end

    assert_redirected_to flower_url(Flower.last)
  end

  test "should show flower" do
    get flower_url(@flower)
    assert_response :success
  end

  test "should get edit" do
    get edit_flower_url(@flower)
    assert_response :success
  end

  test "should update flower" do
    patch flower_url(@flower), params: { flower: { blooming: @flower.blooming, color: @flower.color, description: @flower.description, flower_type: @flower.flower_type, image: @flower.image, name: @flower.name, scientific_name: @flower.scientific_name } }
    assert_redirected_to flower_url(@flower)
  end

  test "should destroy flower" do
    assert_difference("Flower.count", -1) do
      delete flower_url(@flower)
    end

    assert_redirected_to flowers_url
  end
end
