class Parent < ActiveRecord::Base
	has_many :children, dependent: :destroy

	belongs_to :schedule

	validates :first_name, presence: true

	validates :last_name, presence: true

end
