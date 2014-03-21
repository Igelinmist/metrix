class Assembly < ActiveRecord::Base
  has_many :parts, :class_name => 'Assembly', :foreign_key => :plant_id,:dependent => :destroy
  belongs_to :plant, :class_name => 'Assembly'

  has_many :meters
end
