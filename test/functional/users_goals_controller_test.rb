require 'test_helper'

class UsersGoalsControllerTest < ActionController::TestCase
  setup do
    @users_goal = users_goals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users_goals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create users_goal" do
    assert_difference('UsersGoal.count') do
      post :create, users_goal: { description: @users_goal.description, goal_id: @users_goal.goal_id, user_id: @users_goal.user_id }
    end

    assert_redirected_to users_goal_path(assigns(:users_goal))
  end

  test "should show users_goal" do
    get :show, id: @users_goal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @users_goal
    assert_response :success
  end

  test "should update users_goal" do
    put :update, id: @users_goal, users_goal: { description: @users_goal.description, goal_id: @users_goal.goal_id, user_id: @users_goal.user_id }
    assert_redirected_to users_goal_path(assigns(:users_goal))
  end

  test "should destroy users_goal" do
    assert_difference('UsersGoal.count', -1) do
      delete :destroy, id: @users_goal
    end

    assert_redirected_to users_goals_path
  end
end
