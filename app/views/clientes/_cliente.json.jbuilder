json.extract! cliente, :id, :nome, :endereco, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
