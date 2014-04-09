class RenamePathColumn < ActiveRecord::Migration
  def change
    rename_column :scans, :path, :file_name
  end
end
