class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.integer :pill_id
      t.string :comment
      t.datetime :time_after_pill_taken
      t.text :comment
      t.integer :rating

      t.timestamps null: false
    end
  end
end
