class CreateVoltageTransformersAttrs < ActiveRecord::Migration
  def change
    create_table :voltage_transformers_attrs do |t|
      t.string :transform_koef
      t.float :s_nome
      t.float :s_fact
      t.float :voltage_loses
      t.string :switchboards

      t.timestamps
    end
  end
end
