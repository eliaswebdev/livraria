json.array!(@autores) do |autor|
  json.extract! autor, :id
  json.url autor_url(autor, format: :json)
end
