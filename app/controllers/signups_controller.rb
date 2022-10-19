class SignupsController < ApplicationController

  # POST /signups
  def create
    signup = Signup.create!(signup_params)
    render json: signup.activity, status: :created
  end

  private

    # Only allow a list of trusted parameters through.
    def signup_params
      params.permit(:time, :activity_id, :camper_id)
    end
end
