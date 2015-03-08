class CreateReminders < ActiveRecord::Migration
  def change
    create_table :reminders do |t|
      t.integer :pill_id
      t.integer :remind_time

      t.timestamps null: false
    end
  end
end
