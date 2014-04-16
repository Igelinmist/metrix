class Elcounter < Meter
  has_one :elcounter_attr, dependent: :destroy
  accepts_nested_attributes_for :elcounter_attr

  def self.permited_params(params)
    params.require(:elcounter).permit(@@meter_params, elcounter_attr_attributes: [ :id,:connection_schema,:year_of_production,:gost,:elcounter_id ])
  end
end