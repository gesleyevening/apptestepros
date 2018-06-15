# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Proposte.create([
  { nome: 'Proposta teste 1' },
  { descricao: 'Teste de criação proposta' },
  { valor: 100 },
  { dataInicio: 'DateTime.now' },
  { dataFim: '2018-12-01-00-01' },
  { cidade: 'Belo Horizonte' },
])