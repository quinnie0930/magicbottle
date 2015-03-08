class Api::FeedbackController < ApplicationController
    def create
    if feedback = Feedback.create(comment: params[:comment], pill_id: params[:pill_id], rating: params[:rating], comment: params[:comment])
      user = User.find_by_id(params[:user_id))

      render json: user, feedback
    else
      render json: {}, status: :unprocessable_entity
    end
   end
   def get_feedback
      if params[:pill_id].present?
        feedback = Feedback.find_by_id(params[:pill_id])
        render json: feedback
      else
       render json: {}, status: :unprocessable_entity
      end
   end
end
