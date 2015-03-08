class Api::PillsController < ApplicationController
  def index
    render json: Pill.all
  end

  def pill_just_was_taken
    # patient = Patient.find_by(id: params[:patient_id])
    pill = Pill.find_by(id: params[:pill_id])
    if pill && pill.updated_at > 30.seconds.ago && pill.taken
      pill.taken = false
      render json: pill.save
    else
      render json: false
    end

  end

  def take_pill
    pill = Pill.find_by(id: params[:pill_id])
    result = false
    if pill && params[:pill_count].present? && pill.total_left >= params[:pill_count].to_i
      pill.total_left -= params[:pill_count].to_i
      pill.taken = true
      result = pill.save
    end

    render json: result
  end
end