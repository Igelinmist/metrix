class CreateAssemblies < ActiveRecord::Migration
  def change
    create_table :assemblies do |t|
      t.integer :plant_id
      t.string :name
      t.text :params
    end
  end
end
