module MetersHelper
  def setup_ext_attr(device)
    case device.class.name
      when 'VoltageTransformer'
        device.voltage_transformer_attr ||= VoltageTransformerAttr.new
      when 'Elcounter'
        device.elcounter_attr ||= ElcounterAttr.new
      when 'Ascue'
        device.ascue_attr ||= AscueAttr.new

    end

    device
  end

  def measurement_units_tree(root_meter_id = nil)
    level = 0
    mu = Meter.new
    mu.name = '-'
    meter_list = [] << [mu,level]

    meter_hash=Hash.new
    meters = Meter.order(:name).load
    meters.each do |meter|
      unless meter_hash[meter.main_device_id].is_a? Array
        meter_hash[meter.main_device_id]=[]
      end
      meter_hash[meter.main_device_id] << meter
    end

    build_tree_for=Proc.new do |root_id|
      if meter_hash[root_id]
        level += 1
        meter_hash[root_id].each do |unit|
          meter_list << [unit,level]
          build_tree_for.call unit.id
        end
        level -=1
      end
    end

    build_tree_for.call root_meter_id

    meter_list
  end
end
