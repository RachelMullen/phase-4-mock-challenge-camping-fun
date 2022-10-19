class CampersController < ApplicationController
  # GET /campers
  def index
    render json: Camper.all
  end

  # GET /campers/1
  def show
    camper = Camper.find(params[:id])
    render json: camper, serializer: CamperWithActivitiesSerializer
  end

  # POST /campers
  def create
    camper = Camper.create!(camper_params)
    render json: camper, status: :created
  end

  private
    # Only allow a list of trusted parameters through.
    def camper_params
      params.permit(:name, :age)
    end
end
