class RenameSNomeColumn < ActiveRecord::Migration
  def change
    rename_column :voltage_transformer_attrs, :s_nome, :s_nom
  end
end
