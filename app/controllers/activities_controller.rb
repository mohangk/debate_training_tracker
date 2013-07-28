class ActivitiesController < ApplicationController

  def show
    @activity = Activity.find(params[:id])

    respond_to do |format|
      format.json { render json: @activity }
    end
  end

end
