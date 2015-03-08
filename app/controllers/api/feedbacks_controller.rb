class Api::FeedbacksController < ApplicationController
  def create
    if params[:feedback][:pill_id].present?
      pill = Pill.find_by(params[:feedback][:pill_id])
      if pill
        feedback = pill.feedbacks.create(feedback_params)
        render json: feedback
      else
        render_unprocessable_entity
      end
    else
      render_unprocessable_entity
    end
  end

  private
  def feedback_params
    params.require(:feedback).permit(:comment, :rating)
  end

  def render_unprocessable_entity
    render json: {}, status: :unprocessable_entity
  end
end