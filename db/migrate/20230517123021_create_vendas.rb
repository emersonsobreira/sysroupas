class CreateVendas < ActiveRecord::Migration[6.1]
  def change
    create_table :vendas do |t|
      t.date :data_venda
      t.string :cpf
      t.float :total
      t.string :tipoPagamento
      t.references :cliente, null: false, foreign_key: true

      t.timestamps
    end
  end
end
