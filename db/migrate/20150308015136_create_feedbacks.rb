class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.integer :pill_id
      t.string :comment
      t.integer :time_after_pill_taken
      t.integer :rating

      t.timestamps null: false
    end
  end
end
