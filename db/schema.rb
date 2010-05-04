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

ActiveRecord::Schema.define(:version => 20100504174544) do

  create_table "announcements", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "menus", :force => true do |t|
    t.string   "title"
    t.string   "link"
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
