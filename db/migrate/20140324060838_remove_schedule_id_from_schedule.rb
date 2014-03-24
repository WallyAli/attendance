class RemoveScheduleIdFromSchedule < ActiveRecord::Migration
  def change
    remove_column :schedules, :schedule_id, :integer
  end
end
