class CreateMetersAndMeters < ActiveRecord::Migration
  def change
    create_table :meters_meters, id: false do |t|
      t.belongs_to :this_meter
      t.belongs_to :other_meter
    end
  end
end
