module MetersHelper
  def setup_ext_attr(vt)
    vt.voltage_transformer_attr ||= VoltageTransformerAttr.new
    vt
  end
end
