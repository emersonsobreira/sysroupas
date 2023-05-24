class CreateItensvendas < ActiveRecord::Migration[6.1]
  def change
    create_table :itensvendas do |t|
      t.integer :qtd
      t.float :produto_unitario
      t.float :preco_total
      t.references :produto, null: false, foreign_key: true
      t.references :venda, null: false, foreign_key: true

      t.timestamps
    end
  end
end
