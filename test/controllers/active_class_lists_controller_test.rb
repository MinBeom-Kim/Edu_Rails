require 'test_helper'

class ActiveClassListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @active_class_list = active_class_lists(:one)
  end

  test "should get index" do
    get active_class_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_active_class_list_url
    assert_response :success
  end

  test "should create active_class_list" do
    assert_difference('ActiveClassList.count') do
      post active_class_lists_url, params: { active_class_list: { active_class_id: @active_class_list.active_class_id, student_id: @active_class_list.student_id } }
    end

    assert_redirected_to active_class_list_url(ActiveClassList.last)
  end

  test "should show active_class_list" do
    get active_class_list_url(@active_class_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_active_class_list_url(@active_class_list)
    assert_response :success
  end

  test "should update active_class_list" do
    patch active_class_list_url(@active_class_list), params: { active_class_list: { active_class_id: @active_class_list.active_class_id, student_id: @active_class_list.student_id } }
    assert_redirected_to active_class_list_url(@active_class_list)
  end

  test "should destroy active_class_list" do
    assert_difference('ActiveClassList.count', -1) do
      delete active_class_list_url(@active_class_list)
    end

    assert_redirected_to active_class_lists_url
  end
end
