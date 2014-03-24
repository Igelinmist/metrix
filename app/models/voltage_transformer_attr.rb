class VoltageTransformerAttr < ActiveRecord::Base
  belongs_to :voltage_transformer
  delegate :s_fact,:s_nom,:switchboards,:transform_koef,:voltage_loses, to: :voltage_transformer, prifix: false
end
