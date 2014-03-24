class RemoveScheduleIdFromParent < ActiveRecord::Migration
  def change
    remove_column :parents, :schedule_id, :integer
  end
end
