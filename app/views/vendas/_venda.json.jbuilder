json.extract! venda, :id, :data_venda, :cpf, :total, :tipoPagamento, :cliente_id, :created_at, :updated_at
json.url venda_url(venda, format: :json)
