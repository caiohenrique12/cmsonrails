json.array!(@contatos) do |contato|
  json.extract! contato, :id, :endereco, :telefone, :celular, :email, :informacao
  json.url contato_url(contato, format: :json)
end
