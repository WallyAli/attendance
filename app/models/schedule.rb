class Schedule < ActiveRecord::Base

  	belongs_to :child
  	belongs_to :parent
end
