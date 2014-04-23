class Meter < ActiveRecord::Base
  has_and_belongs_to_many :submeters, :class_name => 'Meter',
                          :foreign_key => 'acceptor_id',
                          :association_foreign_key => 'donor_id'
  has_and_belongs_to_many :supermeters, :class_name => 'Meter',
                          :foreign_key => 'donor_id',
                          :association_foreign_key => 'acceptor_id'
  belongs_to :assembly
  has_many :scans, as: :imageable
  has_many :service_jobs
  belongs_to :grsi_item

  accepts_nested_attributes_for :scans

  @@meter_params = [:assembly_id,:name,:grsi_item_id,:accuracy_class, :primary_verification_date,
                    :serial_number].freeze

  def self.permited_params(params)
    params.require(:meter).permit(@@meter_params)
  end

end
