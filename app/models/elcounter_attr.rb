class ElcounterAttr < ActiveRecord::Base
  belongs_to :elcounter
  delegate :connection_schema, :gost, :year_of_production, to: :elcounter, prefix: false
end
