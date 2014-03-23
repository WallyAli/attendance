class ParentsController < ApplicationController

	def index
		@parents = Parent.all.order(first_name: :asc)
	end

	def show
		@parent = Parent.find(params[:id])
	end

	def new
		@parent = Parent.new
	end

	def create
		@parent = Parent.new(parent_params)
		if @parent.save
			redirect_to parents_path, notice: 'Parent record successfully created'
		else
			render :new
		end
	end

	def delete
		@parent = Parent.find(params[:id])
	end

	def destroy
		@parent = Parent.find(params[:id])
		@parent.destroy
		redirect_to parents_path, notice: 'Parent record successfully deleted'
	end

	def parent_params
	    params.require(:parent).permit(:first_name, :last_name, :address, :phone)  
	end

end
