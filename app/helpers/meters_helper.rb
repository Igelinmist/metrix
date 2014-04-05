module MetersHelper
  def setup_ext_attr(device)
    case device.class.name
      when 'VoltageTransformer'
        device.voltage_transformer_attr ||= VoltageTransformerAttr.new
      when 'Elcounter'
        device.elcounter_attr ||= ElcounterAttr.new
    end

    device
  end
end
