class CreatePills < ActiveRecord::Migration
  def change
    create_table :pills do |t|
      t.string :name
      t.integer :dosage
      t.integer :get_feedback_after
      t.float :empty_bottle_weight
      t.integer :patient_id
      t.integer :total_left

      t.timestamps null: false
    end
  end
end
