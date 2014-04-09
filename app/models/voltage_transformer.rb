class VoltageTransformer < Meter
  has_one :voltage_transformer_attr, dependent: :destroy
  accepts_nested_attributes_for :voltage_transformer_attr


  def self.permited_params(params)
    params.require(:voltage_transformer).permit(:assembly_id,:grsi_item_id,:accuracy_class, :primary_verification_date, :serial_number,voltage_transformer_attr_attributes: [ :id,:s_fact,:s_nom,:switchboards,:transform_koef,:voltage_loses,:voltage_transformer_id ])
  end
end