module ChildrenHelper

	include IceCube

	def child_full_name
		[@child.first_name, @child.last_name].join(' ')
	end

	def scheduled_days
		schedule = Schedule.new(now = Time.now) do |s|
			s.add_recurrence_rule Rule.weekly.day(
				:monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday)
		end
	end

	def week
		days = %w[Mon Tue Wed Thu Fri Sat Sun]
	end
end
