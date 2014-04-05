class Elcounter < Meter
  has_one :elcounter_attr, dependent: :destroy
  accepts_nested_attributes_for :elcounter_attr

  def self.permited_params(params)
    params.require(:elcounter).permit(:assembly_id,:grsi_item_id,:accuracy_class, :primary_verification_date, :serial_number,elcounter_attr_attributes: [ :id,:connection_schema,:year_of_production,:gost,:elcounter_id ])
  end
end