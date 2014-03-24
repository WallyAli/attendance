class Schedule < ActiveRecord::Base

	has_one :parent
  	has_many :children, :through => :parent
end
