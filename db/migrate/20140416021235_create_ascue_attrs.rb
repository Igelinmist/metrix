class CreateAscueAttrs < ActiveRecord::Migration
  def change
    create_table :ascue_attrs do |t|
      t.integer :channel_count
      t.date :date_of_revision
      t.integer :revision_interval
      t.references :ascue, index: true

      t.timestamps
    end
  end
end
