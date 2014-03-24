class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.date :date
      t.time :time_in
      t.time :time_out

      t.timestamps
    end
  end
end
