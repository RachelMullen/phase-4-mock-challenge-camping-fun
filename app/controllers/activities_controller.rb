class ActivitiesController < ApplicationController
  # GET /activities
  def index
    render json: Activity.all
  end

  # DELETE /activities/1
  def destroy
    activity = Activity.find(params[:id])
    activity.destroy
    head :no_content
  end

end