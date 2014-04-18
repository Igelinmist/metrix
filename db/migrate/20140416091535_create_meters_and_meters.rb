class CreateMetersAndMeters < ActiveRecord::Migration
  def change
    create_table :meters_meters, id: false do |t|
      t.belongs_to :acceptor
      t.belongs_to :donor
    end
  end
end
