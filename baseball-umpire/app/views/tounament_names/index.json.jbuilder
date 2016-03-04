json.array!(@tounament_names) do |tounament_name|
  json.extract! tounament_name, :id, :name
  json.url tounament_name_url(tounament_name, format: :json)
end
