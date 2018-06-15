class CreatePropostes < ActiveRecord::Migration[5.2]
  def change
    create_table :propostes do |t|
      t.string :nome
      t.text :descricao
      t.decimal :valor
      t.datetime :dataInicio
      t.datetime :dataFim
      t.string :cidade

      t.timestamps
    end
  end
end
