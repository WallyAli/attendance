class SchedulesController < ApplicationController

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
		@schedule = Schedule.create(schedule_params)
		if @schedule.save
			redirect_to parent_child_schedule_path(@schedule), notice: 'success'
		else
			render :new
		end
	end

	private

	def schedule_params
		params.require(:schedule).permit(
					   :date, :time_in, :time_out)  
	end
end
