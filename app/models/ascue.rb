class Ascue < Meter
  has_one :ascue_attr, dependent: :destroy
  accepts_nested_attributes_for :ascue_attr

  def self.permited_params(params)
    params.require(:ascue).permit(@@meter_params, ascue_attr_attributes: [ :id, :channel_count, :date_of_revision, :revision_interval ])
  end
end