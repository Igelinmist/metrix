class AddValidDocToScans < ActiveRecord::Migration
  def change
    add_column :scans, :valid_doc, :boolean, default: :true
  end
end
