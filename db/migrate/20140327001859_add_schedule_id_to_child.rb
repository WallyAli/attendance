class AddScheduleIdToChild < ActiveRecord::Migration
  def change
    add_column :children, :schedule_id, :integer
  end
end
