json.array!(@conteudos) do |conteudo|
  json.extract! conteudo, :id, :titulo, :subtitulo, :texto
  json.url conteudo_url(conteudo, format: :json)
end
