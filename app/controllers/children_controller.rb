class ChildrenController < ApplicationController
	before_filter :load_parent, only: [:index, :new, :create ]

	def index
		@children = @parent.children.all 
	end

	def show
		@child = Child.find(params[:id])
	end

	def new
		@child = @parent.children.new
	end

	def create
		@child = @parent.children.new(child_params)
		if @child.save
			redirect_to parent_path(@parent), notice: 'record successfully created'
		else
			render :new
		end
	end

	def edit
		@child = @parent.children.find(params[:id])
	end

	def update
		@child = @parent.children.find(params[:id])
		if @child.update(child_params)
			redirect_to parent_path(@parent), notice: 'record successfully updated'
		else
			render :edit
		end
	end

	def delete
		@child = @parent.children.find(params[:id])
	end

	def destroy
		@child = @parent.children.find(params[:id])
		@child.destroy
		redirect_to parent_children_path(@parent), notice: 'record successfully deleted'
	end

	private

	def load_parent
		@parent = Parent.find(params[:parent_id])
	end

	def child_params
    	params.require(:child).permit(
    		:first_name, :last_name)
	end
end
