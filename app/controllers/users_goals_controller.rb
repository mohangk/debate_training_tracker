class UsersGoalsController < ApplicationController
  before_filter :authenticate_user!
  # GET /users_goals
  # GET /users_goals.json
  def index
    @my_goals = my_goals

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users_goals }
    end
  end

  # GET /users_goals/new
  # GET /users_goals/new.json
  def new
    @goals = Goal.all
    @user_goal = UsersGoal.new
    @my_custom_goals = my_custom_goals

    @form_title = 'Create more goals'
    @submit_title = 'Add my goal'

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @users_goal }
    end
  end

  # GET /users_goals/1/edit
  def edit
    @goals = Goal.all
    @user_goal = my_goals.find(params[:id])
    @my_custom_goals = my_custom_goals

    @form_title = 'Edit goal'
    @submit_title = 'Update my goal'

    render 'new'
  end

  # POST /users_goals
  # POST /users_goals.json
  def create
    @goals = Goal.all
    @my_custom_goals = my_custom_goals
    @user_goal = UsersGoal.new(params[:users_goal])
    @user_goal.user = current_user

    respond_to do |format|
      if @user_goal.save
        format.html { redirect_to action: 'new', notice: 'Users goal was successfully created.' }
        format.json { render json: @user_goal, status: :created, location: @user_goal }
      else
        format.html { render action: "new" }
        format.json { render json: @user_goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /users_goals/1
  # PUT /users_goals/1.json
  def update

    @goals = Goal.all
    @my_custom_goals = my_custom_goals
    @user_goal = my_goals.find(params[:id])

    respond_to do |format|
      if @user_goal.update_attributes(params[:users_goal])
        format.html { redirect_to action: 'new', notice: 'Users goal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users_goals/1
  # DELETE /users_goals/1.json
  def destroy
    @users_goal = my_goals.find(params[:id])
    @users_goal.destroy

    respond_to do |format|
      format.html { redirect_to action: 'new', notice: 'Goal was removed'}
      format.json { head :no_content }
    end
  end

  private

  def my_goals
    current_user.goals
  end

  def my_custom_goals
    current_user.custom_goals
  end
end
