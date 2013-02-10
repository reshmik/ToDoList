require 'test_helper'

class TodolistChartsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:todolist_charts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create todolist_chart" do
    assert_difference('TodolistChart.count') do
      post :create, :todolist_chart => { }
    end

    assert_redirected_to todolist_chart_path(assigns(:todolist_chart))
  end

  test "should show todolist_chart" do
    get :show, :id => todolist_charts(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => todolist_charts(:one).to_param
    assert_response :success
  end

  test "should update todolist_chart" do
    put :update, :id => todolist_charts(:one).to_param, :todolist_chart => { }
    assert_redirected_to todolist_chart_path(assigns(:todolist_chart))
  end

  test "should destroy todolist_chart" do
    assert_difference('TodolistChart.count', -1) do
      delete :destroy, :id => todolist_charts(:one).to_param
    end

    assert_redirected_to todolist_charts_path
  end
end
