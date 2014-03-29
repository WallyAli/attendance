class Child < ActiveRecord::Base
	serialize :day

	has_and_belongs_to_many :calendars
	accepts_nested_attributes_for :calendars, :allow_destroy => true
	
	belongs_to :parent
	belongs_to :schedule

	validates :first_name, presence: true
	validates :last_name, presence: true
	# validates :day, presence: true
	validates :parent_id, presence: true
end
