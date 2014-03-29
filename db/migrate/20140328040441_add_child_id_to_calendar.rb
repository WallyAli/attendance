class AddChildIdToCalendar < ActiveRecord::Migration
  def change
    add_column :calendars, :child_id, :integer
  end
end
