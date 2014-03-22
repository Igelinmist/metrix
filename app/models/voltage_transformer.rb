class VoltageTransformer < Meter
  has_one :voltage_transformers_attr, dependent: :destroy
end