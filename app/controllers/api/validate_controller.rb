class Api::ValidateController < ApplicationController
  def confirm_pill_taken
    if params[:user_id].present? && params[:num_pills].present?
      current_user = User.find_by(id: params[:id])
      total_left = current_user.pill.total_left -= params[:num_pills]
      return true?(total_left==0):false
    end
  end
end
