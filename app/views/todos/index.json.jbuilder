json.array!(@todos) do |todo|
  json.extract! todo, :id, :titulo, :hecho
  json.url todo_url(todo, format: :json)
end
