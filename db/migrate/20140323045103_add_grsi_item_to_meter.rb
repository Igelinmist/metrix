class AddGrsiItemToMeter < ActiveRecord::Migration
  def change
    add_column :meters, :grsi_item_id, :integer
  end
end
