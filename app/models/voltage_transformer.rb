class VoltageTransformer < Meter
  has_one :voltage_transformer_attr, dependent: :destroy
  accepts_nested_attributes_for :voltage_transformer_attr
end