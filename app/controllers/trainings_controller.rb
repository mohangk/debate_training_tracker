class TrainingsController < ApplicationController
  before_filter :authenticate_user!
  # GET /trainings
  # GET /trainings.json
  def index
    @debate_trainings = DebateTraining.for_user(current_user)
    @activity_trainings = ActivityTraining.for_user(current_user)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @trainings }
    end
  end

  # DELETE /trainings/1
  # DELETE /trainings/1.json
  def destroy
    @training = Training.find(params[:id])
    @training.destroy

    respond_to do |format|
      format.html { redirect_to trainings_url }
      format.json { head :no_content }
    end
  end

  def transcript
    @trainings_by_date = Training.for_user(current_user).group_by do |t|
      t.scheduled_at.to_date
    end
  end


end
