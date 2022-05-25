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

ActiveRecord::Schema[7.0].define(version: 2022_05_24_200830) do
  create_table "api_v1_medicos", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "usuario_id", null: false
    t.string "titulo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["usuario_id"], name: "index_api_v1_medicos_on_usuario_id"
  end

  create_table "cita", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "usuario_id", null: false
    t.string "fecha"
    t.string "tipo"
    t.string "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["usuario_id"], name: "index_cita_on_usuario_id"
  end

  create_table "consulta", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "numeroDocumento"
    t.string "enfermedades"
    t.string "cirugias"
    t.string "medicamentos"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "historia", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "numeroDocumento"
    t.string "enfermedades"
    t.string "medicamentos"
    t.string "cirugias"
    t.string "antecedentes"
    t.string "resultados"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ordens", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "descripcion"
    t.string "margen_de_tiempo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "receta", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "dosis"
    t.string "fecha_vencimiento"
    t.integer "entregaxmes"
    t.string "medicamentos"
    t.string "descripcion_tratamiento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "tipo"
    t.string "tipoDocumento"
    t.string "numeroDocumento"
    t.string "nombre"
    t.string "apellido"
    t.string "telefono"
    t.string "email"
    t.string "contrasena"
    t.string "fechaNacimiento"
    t.string "eps"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "api_v1_medicos", "usuarios"
  add_foreign_key "cita", "usuarios"
end
