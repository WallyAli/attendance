class CalendarsController < ApplicationController
  def index
  	@days = Calendar.all
  end
end
