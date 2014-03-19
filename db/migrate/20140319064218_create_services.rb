class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :doc_num
      t.date :serv_date
      t.boolean :is_primary, default: false
      t.date :valid_to
      t.string :serv_firm
      t.text :descr
      t.integer :device_id
      t.string :device_type

      t.timestamps
    end
  end
end
