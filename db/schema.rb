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

ActiveRecord::Schema.define(:version => 20100908094135) do

  create_table "announcements", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "carteras", :force => true do |t|
    t.string   "codigo"
    t.string   "empresa"
    t.string   "rut"
    t.string   "holding"
    t.string   "agencia"
    t.string   "contacto"
    t.string   "cargo"
    t.string   "telefono"
    t.string   "telefono_celular"
    t.string   "direccion"
    t.string   "comuna"
    t.string   "referencia_dir"
    t.string   "estado"
    t.boolean  "cartera"
    t.boolean  "afiliada"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "empresas", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fonasa_mles", :force => true do |t|
    t.integer  "codigo"
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "intencions", :force => true do |t|
    t.integer  "presupuesto_id"
    t.string   "intencion"
    t.string   "principal"
    t.integer  "atencion"
    t.integer  "recomendacion"
    t.integer  "confianza_hts"
    t.integer  "confianza_medico"
    t.integer  "precio"
    t.integer  "isapre"
    t.integer  "seguro_comp"
    t.integer  "convenio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "itemizacions", :force => true do |t|
    t.integer  "presupuesto_id"
    t.integer  "fonasa_mle_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "menus", :force => true do |t|
    t.string   "title"
    t.string   "link"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "security_level"
  end

  create_table "pacientes", :force => true do |t|
    t.integer  "ficha"
    t.string   "rut"
    t.string   "fono_fijo"
    t.string   "celular"
    t.string   "mail"
    t.integer  "tipo_paciente_id"
    t.string   "nombre"
    t.string   "apellido_paterno"
    t.string   "apellido_materno"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "presupuestos", :force => true do |t|
    t.date     "fecha_emision"
    t.date     "fecha_inicio_gestion"
    t.integer  "user_id"
    t.integer  "plazo_gestion"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "cartera_id"
    t.boolean  "pending"
    t.integer  "paciente_id"
    t.integer  "prevision_id"
    t.integer  "estado",               :default => 0
  end

  create_table "previsions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "isapre"
  end

  create_table "seguimientos", :force => true do |t|
    t.integer  "presupuesto_id"
    t.text     "comentario"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_pacientes", :force => true do |t|
    t.string   "clase"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "rut"
    t.string   "nombre"
    t.string   "apellido_materno"
    t.string   "apellido_paterno"
    t.date     "fecha_contratacion"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.string   "username"
    t.boolean  "admin"
  end

end
