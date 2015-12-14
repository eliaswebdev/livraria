json.array!(@livros) do |livro|
  json.extract! livro, :id
  json.url livro_url(livro, format: :json)
end
