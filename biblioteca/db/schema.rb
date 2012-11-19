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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 201211150010582) do

  create_table "autores", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "autores_livros", :id => false, :force => true do |t|
    t.integer "autor_id"
    t.integer "livro_id"
  end

  create_table "categorias", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "categorias_livros", :id => false, :force => true do |t|
    t.integer "categoria_id"
    t.integer "livro_id"
  end

  create_table "editoras", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "livros", :force => true do |t|
    t.integer  "categoria_id"
    t.integer  "editora_id"
    t.string   "titulo"
    t.integer  "paginas"
    t.integer  "ano"
    t.string   "issn"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "livros", ["categoria_id"], :name => "index_livros_on_categoria_id"
  add_index "livros", ["editora_id"], :name => "index_livros_on_editora_id"

end
