class Meter < ActiveRecord::Base
  belongs_to :assembly
  has_many :scans, as: :imageable
  has_many :service_jobs
  belongs_to :profile, polymorphic: true

  def valid_for(end_date)
    # Действие свидетельства о поверке до окончания периода
    true
  end
end
