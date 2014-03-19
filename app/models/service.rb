class Service < ActiveRecord::Base
  has_many :scans, as: :imageable
end
