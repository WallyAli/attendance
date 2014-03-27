class AddDayToChild < ActiveRecord::Migration
  def change
    add_column :children, :day, :text
  end
end
