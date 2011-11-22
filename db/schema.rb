# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111115183243) do

  create_table "atividades", :force => true do |t|
    t.string   "titulo"
    t.text     "descricao"
    t.integer  "programa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "avaliacao_questaos", :force => true do |t|
    t.integer  "avaliacao_id"
    t.integer  "questao_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "avaliacaos", :force => true do |t|
    t.string   "titulo"
    t.text     "descricao"
    t.integer  "status"
    t.integer  "atividade_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "disciplinas", :force => true do |t|
    t.string   "nome"
    t.string   "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "material_atividades", :force => true do |t|
    t.integer  "material_id"
    t.integer  "atividade_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "material_disciplinas", :force => true do |t|
    t.integer  "material_id"
    t.integer  "disciplina_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "material_programas", :force => true do |t|
    t.integer  "material_id"
    t.integer  "programa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "materials", :force => true do |t|
    t.string   "titulo"
    t.text     "corpo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "perfil_permissaos", :force => true do |t|
    t.integer  "perfil_id"
    t.integer  "permissao_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "perfils", :force => true do |t|
    t.string   "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "permissaos", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "programas", :force => true do |t|
    t.string   "nome"
    t.integer  "carga_horaria"
    t.integer  "periodicidade"
    t.integer  "ano_implantacao"
    t.string   "ementa"
    t.text     "objetivos"
    t.integer  "disciplina_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questao_alternativas", :force => true do |t|
    t.integer  "questao_id"
    t.integer  "sequencia"
    t.string   "descricao"
    t.integer  "questao_alternativas_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questaos", :force => true do |t|
    t.string   "titulo"
    t.text     "descricao"
    t.integer  "tipo"
    t.integer  "questao_alternativa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuario_avaliacao_questaos", :force => true do |t|
    t.integer  "usuario_id"
    t.integer  "avaliacao_id"
    t.integer  "questao_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuario_avaliacaos", :force => true do |t|
    t.integer  "usuario_id"
    t.integer  "avaliacao_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuario_programas", :force => true do |t|
    t.integer  "usuario_id"
    t.integer  "programa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuarios", :force => true do |t|
    t.string   "nome"
    t.string   "login"
    t.string   "senha"
    t.string   "email"
    t.integer  "perfil_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
