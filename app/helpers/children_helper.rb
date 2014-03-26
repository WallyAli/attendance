module ChildrenHelper

	def child_full_name
		[@child.first_name, @child.last_name].join(' ')
	end
end
