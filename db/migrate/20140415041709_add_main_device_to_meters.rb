class AddMainDeviceToMeters < ActiveRecord::Migration
  def change
  	add_column :meters, :main_device_id, :integer
    add_column :meters, :name, :string
    add_column :meters, :is_commerce, :boolean, default: :false

  end
end
