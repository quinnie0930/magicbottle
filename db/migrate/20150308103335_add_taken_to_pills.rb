class AddTakenToPills < ActiveRecord::Migration
  def change
    add_column :pills, :taken, :boolean, default: false
  end
end
