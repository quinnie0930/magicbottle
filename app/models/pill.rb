class Pill < ActiveRecord::Base
  belongs_to :patient
  has_many :feedbacks
end
