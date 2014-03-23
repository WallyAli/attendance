class Parent < ActiveRecord::Base
	has_many :children, dependent: :destroy

	validates :first_name, presence: true

	validates :last_name, presence: true

end
