class CreateGrsiItems < ActiveRecord::Migration
  def change
    create_table :grsi_items do |t|
      t.string :reestr_nmbr
      t.string :reestr_name
      t.string :reestr_type
      t.string :factory
      t.string :country
      t.date :valid_until
      t.integer :mpi_year

      t.timestamps
    end
  end
end
