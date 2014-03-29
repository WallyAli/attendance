class CalendarsController < ApplicationController
  def index
  	@days = Calendar.all
  end

  def new
  	@day = Calendar.new
  end

  def create
  	@day = Calendar.new(calendar_params)
  	if @day.save
  		redirect_to @day
  	else
  		render :new
  	end
  end

  def calendar_params
  	params.require(:calendars).permit(:day)
  end
end
