json.array!(@sugestoes) do |sugestao|
  json.extract! sugestao, :id, :nome, :email, :telefone, :texto
  json.url sugestao_url(sugestao, format: :json)
end
