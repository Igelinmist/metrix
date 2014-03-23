class Elcounter < Meter
  has_one :elcounter_attr, dependent: :destroy
end