class SchedulesController < ApplicationController

	before_filter :load_child

	def index
		@schedules = Schedule.all
	end

	def show
		@schedule = Schedule.find(params[:id])
	end

	def new
		@schedule = Schedule.new
	end

	def create
		@schedule = @child.schedules.new(schedule_params)
		if @schedule.save
			redirect_to schedule_path(@schedule), notice: 'success'
		else
			render :new
		end
	end

	private

	def schedule_params
		params.require(:schedule).permit(
					   :date, :time_in, :time_out)  
	end

	def load_child
		@child = Child.find(params[:id])
	end
end
