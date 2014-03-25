class AddChildIdToSchedule < ActiveRecord::Migration
  def change
    add_column :schedules, :child_id, :integer
  end
end
