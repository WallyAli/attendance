class Schedule < ActiveRecord::Base

  	has_many :children, dependent: :destroy
  	has_many :parents, through: :children

end
