class AddPillWeightToPill < ActiveRecord::Migration
  def change
    add_column :pills, :pill_weight, :float
  end
end
