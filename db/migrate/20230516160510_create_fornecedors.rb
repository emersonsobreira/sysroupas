class CreateFornecedors < ActiveRecord::Migration[6.1]
  def change
    create_table :fornecedors do |t|
      t.string :nome
      t.string :endereco
      t.string :telefone
      t.string :cpf
      t.string :email

      t.timestamps
    end
  end
end
