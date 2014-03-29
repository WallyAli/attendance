class AddCalendarIdToChild < ActiveRecord::Migration
  def change
    add_column :children, :calendar_id, :integer
  end
end
