class RemoveChildIdFromSchedule < ActiveRecord::Migration
  def change
    remove_column :schedules, :child_id, :integer
  end
end
