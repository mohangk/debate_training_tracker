class TrainingsController < ApplicationController
  before_filter :authenticate_user!
  # GET /trainings
  # GET /trainings.json
  def index
    @trainings = trainings

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @trainings }
    end
  end

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
    @training = Training.new

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
    @training = Training.new(params[:training])
    @training.user = current_user

    
    respond_to do |format|
      if @training.save
        format.html { redirect_to @training, notice: 'Training was successfully created.' }
        format.json { render json: @training, status: :created, location: @training }
      else
        raise @training.errors.inspect
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
      if @training.update_attributes(params[:training])
        format.html { redirect_to @training, notice: 'Training was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @training.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trainings/1
  # DELETE /trainings/1.json
  def destroy
    @training = trainings.find(params[:id])
    @training.destroy

    respond_to do |format|
      format.html { redirect_to trainings_url }
      format.json { head :no_content }
    end
  end

  private

  def trainings
    Training.for_user(current_user)
  end
end
