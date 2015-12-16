# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20151216130820) do

  create_table "autores", force: :cascade do |t|
    t.string   "nome",       limit: 255
    t.string   "sobrenome",  limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "autores_livros", force: :cascade do |t|
    t.integer "autor_id", limit: 4
    t.integer "livro_id", limit: 4
  end

  add_index "autores_livros", ["autor_id"], name: "index_autores_livros_on_autor_id", using: :btree
  add_index "autores_livros", ["livro_id"], name: "index_autores_livros_on_livro_id", using: :btree

  create_table "categorias", force: :cascade do |t|
    t.string   "nome",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "editoras", force: :cascade do |t|
    t.string   "nome",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "livros", force: :cascade do |t|
    t.integer  "categoria_id", limit: 4
    t.integer  "editora_id",   limit: 4
    t.string   "titulo",       limit: 255
    t.string   "isbn",         limit: 255
    t.text     "descricao",    limit: 65535
    t.integer  "ano",          limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "livros", ["categoria_id"], name: "index_livros_on_categoria_id", using: :btree
  add_index "livros", ["editora_id"], name: "index_livros_on_editora_id", using: :btree

  create_table "permissions", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.integer  "role_id",    limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "permissions", ["role_id"], name: "index_permissions_on_role_id", using: :btree
  add_index "permissions", ["user_id"], name: "index_permissions_on_user_id", using: :btree

  create_table "roles", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "value",       limit: 255
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "autores_livros", "autores"
  add_foreign_key "autores_livros", "livros"
  add_foreign_key "livros", "categorias"
  add_foreign_key "livros", "editoras"
  add_foreign_key "permissions", "roles"
  add_foreign_key "permissions", "users"
end
