class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :lastname
      t.string :username
      t.string :phone_number

      t.timestamps null: false
    end
  end
end
