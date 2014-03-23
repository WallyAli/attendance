class ParentsController < ApplicationController

	def index
		@parents = Parent.all.order(first_name: :asc)
	end

	def show
		@parent = Parent.find(params[:id])
	end

	def create_child
		@parent = Parent.find(params[:id])
		@child = @parent.children.build(child_params)
		if @child.save
			@child = Child.new
		else
			render :new
		end
	end

	def destroy
		
	end

	def child_params
	    params.require(:child).permit(:first_name, :last_name, :parent_id)  
	end

end
