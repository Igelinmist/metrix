class Meter < ActiveRecord::Base
  belongs_to :assembly
  has_many :scans, as: :imageable
  has_many :service_jobs
end
