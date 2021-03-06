class DebateTrainingsController < ApplicationController
  before_filter :authenticate_user!

  # GET /trainings/1
  # GET /trainings/1.json
  def show
    @training = trainings.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @training }
    end
  end

  # GET /trainings/new
  # GET /trainings/new.json
  def new
    @training = training_class.new

    current_user.goals.each { |my_goal|
      training_achievement = TrainingAchievement.new
      training_achievement.users_goal = my_goal
      @training.training_achievements << training_achievement
    }

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @training }
    end
  end

  # GET /trainings/1/edit
  def edit
    @training = trainings.find(params[:id])
  end

  # POST /trainings
  # POST /trainings.json
  def create
    @training = training_class.new(params[training_param])
    @training.user = current_user

    respond_to do |format|
      if @training.save
        format.html { redirect_to @training, notice: 'Debate training was successfully created.' }
        format.json { render json: @training, status: :created, location: @training }
      else
        format.html { render action: "new" }
        format.json { render json: @training.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /trainings/1
  # PUT /trainings/1.json
  def update
    @training = trainings.find(params[:id])

    respond_to do |format|
      if @training.update_attributes(params[training_param])
        format.html { redirect_to @training, notice: 'Training was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @training.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def trainings
    DebateTraining.for_user(current_user)
  end

  def training_class
    DebateTraining
  end

  def training_param
    'debate_training'
  end
end
