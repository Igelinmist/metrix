class CreateMeters < ActiveRecord::Migration
  def change
    create_table :meters do |t|
      t.string :accuracy_class
      t.string :serial_number
      t.date :primary_verification_date
      t.belongs_to :assembly
    end
  end
end
