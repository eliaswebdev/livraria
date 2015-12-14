json.array!(@editoras) do |editora|
  json.extract! editora, :id
  json.url editora_url(editora, format: :json)
end
