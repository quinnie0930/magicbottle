class Patient < ActiveRecord::Base
  has_many :pills
end
