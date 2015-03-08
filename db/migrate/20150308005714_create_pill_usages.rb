class CreatePillUsages < ActiveRecord::Migration
  def change
    create_table :pill_usages do |t|
      t.integer :pill_id
      t.integer :pill_taken
      t.text :feedback

      t.timestamps null: false
    end
  end
end
