class CreateVoltageTransformerAttrs < ActiveRecord::Migration
  def change
    create_table :voltage_transformer_attrs do |t|
      t.string :transform_koef
      t.float :s_nome
      t.float :s_fact
      t.float :voltage_loses
      t.string :switchboards
      t.belongs_to :voltage_transformer
      t.timestamps
    end
  end
end
