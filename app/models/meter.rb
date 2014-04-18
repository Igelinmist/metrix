class Meter < ActiveRecord::Base
  has_many :parts, :class_name => 'Meter', :foreign_key => :main_device_id
  belongs_to :main_device, :class_name => 'Meter'

  has_and_belongs_to_many :assembly_meters, :class_name => 'Meter',
                          :foreign_key => 'acceptor_id',
                          :association_foreign_key => 'donor_id'
  
  belongs_to :assembly
  has_many :scans, as: :imageable
  has_many :service_jobs
  belongs_to :grsi_item

  accepts_nested_attributes_for :scans

  @@meter_params = [:assembly_id,:main_device_id,:name,:grsi_item_id,:accuracy_class, :primary_verification_date, :serial_number].freeze

  def valid_for(end_date)
    # Действие свидетельства о поверке до окончания периода
    true
  end

  def self.permited_params(params)
    params.require(:meter).permit(@@meter_params)
  end

end
