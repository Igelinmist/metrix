class ServiceJob < ActiveRecord::Base
  belongs_to :meter
  has_many :scans, as: :imageable
end
