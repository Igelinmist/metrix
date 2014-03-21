class CreateServiceJobs < ActiveRecord::Migration
  def change
    create_table :service_jobs do |t|
      t.string :doc_num
      t.date :serv_date
      t.date :valid_to
      t.string :serv_firm
      t.text :descr
      t.belongs_to :meter

      t.timestamps
    end
  end
end
