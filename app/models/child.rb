class Child < ActiveRecord::Base
	belongs_to :parent
	has_many :schedules

	validates :first_name, presence: true
	validates :last_name, presence: true

	validates :parent_id, presence: true
end
