class SchedulesController < ApplicationController

	before_filter :load_child, except: :show

	def index
		@schedules = Schedule.all
		@child = Child.find(params[:child_id])
		@schedules_by_date = @child.schedules.group_by(&:date)
		@date = params[:date] ? Date.parse(params[:date]) : Date.today

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
		@child = Child.find(params[:child_id])
	end
end
