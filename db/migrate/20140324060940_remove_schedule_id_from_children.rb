class RemoveScheduleIdFromChildren < ActiveRecord::Migration
  def change
    remove_column :children, :schedule_id, :integer
  end
end
