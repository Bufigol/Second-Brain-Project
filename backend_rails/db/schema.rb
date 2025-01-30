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

ActiveRecord::Schema[8.0].define(version: 2025_01_26_232842) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "etiquetas", id: :serial, force: :cascade do |t|
    t.string "name", limit: 255, null: false
    t.string "color", limit: 20, null: false

    t.unique_constraint ["name"], name: "etiquetas_name_key"
  end

  create_table "nota_etiquetas", primary_key: ["nota_id", "etiqueta_id"], force: :cascade do |t|
    t.integer "nota_id", null: false
    t.integer "etiqueta_id", null: false
  end

  create_table "notas", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.string "title", limit: 255, null: false
    t.string "content_type", limit: 50, null: false
    t.string "status", limit: 50, null: false
    t.datetime "created_at", precision: nil, default: -> { "CURRENT_TIMESTAMP" }
    t.datetime "updated_at", precision: nil, default: -> { "CURRENT_TIMESTAMP" }
  end

  create_table "proyectos", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.string "name", limit: 255, null: false
    t.text "description"
    t.string "status", limit: 50, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "last_login"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", id: :serial, force: :cascade do |t|
    t.string "username", limit: 255, null: false
    t.string "email", limit: 255, null: false
    t.string "password_hash", limit: 255, null: false
    t.datetime "created_at", precision: nil, default: -> { "CURRENT_TIMESTAMP" }
    t.datetime "last_login", precision: nil

    t.unique_constraint ["email"], name: "usuarios_email_key"
  end

  add_foreign_key "nota_etiquetas", "etiquetas", name: "nota_etiquetas_etiqueta_id_fkey"
  add_foreign_key "nota_etiquetas", "notas", name: "nota_etiquetas_nota_id_fkey"
  add_foreign_key "notas", "usuarios", column: "user_id", name: "notas_user_id_fkey"
  add_foreign_key "proyectos", "usuarios", column: "user_id", name: "proyectos_user_id_fkey"
end
