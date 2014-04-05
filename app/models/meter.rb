class Meter < ActiveRecord::Base
  belongs_to :assembly
  has_many :scans, as: :imageable
  has_many :service_jobs
  belongs_to :grsi_item

  delegate :permited_params, to: :class

  def valid_for(end_date)
    # Действие свидетельства о поверке до окончания периода
    true
  end

  def self.permited_params(params)
    params.require(:meter).permit(:assembly_id,:grsi_item_id,:accuracy_class, :primary_verification_date, :serial_number)
  end

end
