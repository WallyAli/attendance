class Parent < ActiveRecord::Base
	has_many :children, dependent: :destroy
	has_many :schedules, through: :children

	validates :first_name, presence: true

	validates :last_name, presence: true

end
