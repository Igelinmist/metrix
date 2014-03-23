json.array!(@grsi_items) do |grsi_item|
  json.extract! grsi_item, :id, :reestr_nmbr, :reestr_name, :reestr_type, :factory, :country, :valid_until, :mpi_year
  json.url grsi_item_url(grsi_item, format: :json)
end
