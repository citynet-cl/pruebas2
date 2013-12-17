json.array!(@porhacers) do |porhacer|
  json.extract! porhacer, :id, :titulo, :hecho
  json.url porhacer_url(porhacer, format: :json)
end
