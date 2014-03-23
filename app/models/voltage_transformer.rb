class VoltageTransformer < Meter
  has_one :voltage_transformer_attr, dependent: :destroy
end