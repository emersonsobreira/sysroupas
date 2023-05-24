class CreateFornecedors < ActiveRecord::Migration[6.1]
  def change
    create_table :fornecedors do |t|
      t.string :nome
      t.string :logradouro
      t.string :numero
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.string :cep
      t.string :telefone
      t.string :cpf
      t.string :email

      t.timestamps
    end
  end
end
