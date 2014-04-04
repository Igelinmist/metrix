class Meter < ActiveRecord::Base
  belongs_to :assembly
  has_many :scans, as: :imageable
  has_many :service_jobs
  belongs_to :grsi_item

  def valid_for(end_date)
    # Действие свидетельства о поверке до окончания периода
    true
  end

end
