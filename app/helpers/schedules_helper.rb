module SchedulesHelper

	def date_form(date)
		date.strftime("%m/%d/%Y").html_safe
	end
end
