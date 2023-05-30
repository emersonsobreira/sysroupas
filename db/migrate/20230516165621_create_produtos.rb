class CreateProdutos < ActiveRecord::Migration[6.1]
  def change
    create_table :produtos do |t|
      t.string :nome
      t.integer :qtd
      t.string :tamanho
      t.string :tipo
      t.string :marca
      t.float :preco
      t.references :fornecedor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
