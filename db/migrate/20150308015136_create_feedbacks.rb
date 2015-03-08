class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.integer :pill_id
      t.stringtime_after_pill_taken :comment
      t.integer :rating

      t.timestamps null: false
    end
  end
end
