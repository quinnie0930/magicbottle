# class Api::ReminderController < ApplicationController
#   def remind
#      current_time = Time.new.to_i
#      if params[:user_id].present?
#         current_user = User.find(:id params[:user_id])
#         if (current_time-current_user.pill.reminder.reminder_time).abs>=1000
#           return
#           #true
#      end

#   end

# end
