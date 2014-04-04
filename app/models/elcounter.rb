class Elcounter < Meter
  has_one :elcounter_attr, dependent: :destroy
  accepts_nested_attributes_for :elcounter_attr
end