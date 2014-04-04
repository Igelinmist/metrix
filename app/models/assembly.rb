class Assembly < ActiveRecord::Base
  has_many :parts, :class_name => 'Assembly', :foreign_key => :plant_id,:dependent => :destroy
  belongs_to :plant, :class_name => 'Assembly'

  has_many :meters

  def full_name
    res=self.name
    current_assembly = self
    while current_assembly.plant do
      res = current_assembly.plant.name + '>' + res
      current_assembly = current_assembly.plant
    end
    res
  end
end
