class Api::PatientController < ApplicationController
  def create
    if patient = Patient.create(patient_params)
      render json: { userid: patient.id, username: patient.username }
    else
      render json: {}, status: :unprocessable_entity
    end
  end

  private

  def patient_params
    params.require(:patient).permit(:first_name, :lastname, :username, :phone_number)
  end
end
