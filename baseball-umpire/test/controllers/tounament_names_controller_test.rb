require 'test_helper'

class TounamentNamesControllerTest < ActionController::TestCase
  setup do
    @tounament_name = tounament_names(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tounament_names)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tounament_name" do
    assert_difference('TounamentName.count') do
      post :create, tounament_name: { name: @tounament_name.name }
    end

    assert_redirected_to tounament_name_path(assigns(:tounament_name))
  end

  test "should show tounament_name" do
    get :show, id: @tounament_name
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tounament_name
    assert_response :success
  end

  test "should update tounament_name" do
    patch :update, id: @tounament_name, tounament_name: { name: @tounament_name.name }
    assert_redirected_to tounament_name_path(assigns(:tounament_name))
  end

  test "should destroy tounament_name" do
    assert_difference('TounamentName.count', -1) do
      delete :destroy, id: @tounament_name
    end

    assert_redirected_to tounament_names_path
  end
end
