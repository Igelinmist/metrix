json.array!(@assemblies) do |assembly|
  json.extract! assembly, :id, :plant_id, :name, :params
  json.url assembly_url(assembly, format: :json)
end
