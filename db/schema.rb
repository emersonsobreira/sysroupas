# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_05_24_124217) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clientes", force: :cascade do |t|
    t.string "nome"
    t.string "cpf"
    t.string "endereco"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "fornecedors", force: :cascade do |t|
    t.string "nome"
    t.string "endereco"
    t.string "telefone"
    t.string "cpf"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "itensvendas", force: :cascade do |t|
    t.integer "qtd"
    t.float "produto_unitario"
    t.float "preco_total"
    t.bigint "produto_id", null: false
    t.bigint "venda_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["produto_id"], name: "index_itensvendas_on_produto_id"
    t.index ["venda_id"], name: "index_itensvendas_on_venda_id"
  end

  create_table "produtos", force: :cascade do |t|
    t.string "nome"
    t.integer "qtd"
    t.string "tamanho"
    t.float "preco"
    t.bigint "fornecedor_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["fornecedor_id"], name: "index_produtos_on_fornecedor_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "nome"
    t.string "telefone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vendas", force: :cascade do |t|
    t.date "data_venda"
    t.string "cpf"
    t.float "total"
    t.string "tipoPagamento"
    t.bigint "cliente_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cliente_id"], name: "index_vendas_on_cliente_id"
  end

  add_foreign_key "itensvendas", "produtos"
  add_foreign_key "itensvendas", "vendas"
  add_foreign_key "produtos", "fornecedors"
  add_foreign_key "vendas", "clientes"
end
