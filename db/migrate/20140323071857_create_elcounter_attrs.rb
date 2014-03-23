class CreateElcounterAttrs < ActiveRecord::Migration
  def change
    create_table :elcounter_attrs do |t|
      t.string :connection_schema
      t.integer :year_of_production
      t.string :gost
      t.belongs_to :elcounter

      t.timestamps
    end
  end
end
