class RemoveMainDeviceIdFromMeters < ActiveRecord::Migration
  def change
    remove_column :meters, :main_device_id
  end
end
