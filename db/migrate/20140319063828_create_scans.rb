class CreateScans < ActiveRecord::Migration
  def change
    create_table :scans do |t|
      t.string :descr,presence: true
      t.string :path, presence: true
      t.integer :imageable_id
      t.string :imageable_type

      t.timestamps
    end
  end
end
