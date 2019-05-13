require 'test_helper'

class ActiveClassesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @active_class = active_classes(:one)
  end

  test "should get index" do
    get active_classes_url
    assert_response :success
  end

  test "should get new" do
    get new_active_class_url
    assert_response :success
  end

  test "should create active_class" do
    assert_difference('ActiveClass.count') do
      post active_classes_url, params: { active_class: { class_name: @active_class.class_name } }
    end

    assert_redirected_to active_class_url(ActiveClass.last)
  end

  test "should show active_class" do
    get active_class_url(@active_class)
    assert_response :success
  end

  test "should get edit" do
    get edit_active_class_url(@active_class)
    assert_response :success
  end

  test "should update active_class" do
    patch active_class_url(@active_class), params: { active_class: { class_name: @active_class.class_name } }
    assert_redirected_to active_class_url(@active_class)
  end

  test "should destroy active_class" do
    assert_difference('ActiveClass.count', -1) do
      delete active_class_url(@active_class)
    end

    assert_redirected_to active_classes_url
  end
end
