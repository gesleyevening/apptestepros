json.extract! proposte, :id, :nome, :descricao, :valor, :dataInicio, :dataFim, :cidade, :created_at, :updated_at
json.url proposte_url(proposte, format: :json)
