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

ActiveRecord::Schema[7.0].define(version: 2023_02_17_224703) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alumnos", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "family_id", null: false
    t.index ["family_id"], name: "index_alumnos_on_family_id"
  end

  create_table "concepts", force: :cascade do |t|
    t.string "nombre"
    t.integer "precio"
    t.boolean "saldado", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "year_id", null: false
    t.index ["year_id"], name: "index_concepts_on_year_id"
  end

  create_table "cursos", force: :cascade do |t|
    t.string "año"
    t.string "seccion"
    t.string "nivel"
    t.integer "cantidad", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "families", force: :cascade do |t|
    t.string "apellido"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inscriptions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "curso_id", null: false
    t.bigint "alumno_id", null: false
    t.index ["alumno_id"], name: "index_inscriptions_on_alumno_id"
    t.index ["curso_id"], name: "index_inscriptions_on_curso_id"
  end

  create_table "payments", force: :cascade do |t|
    t.integer "monto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "alumno_id", null: false
    t.bigint "concept_id", null: false
    t.index ["alumno_id"], name: "index_payments_on_alumno_id"
    t.index ["concept_id"], name: "index_payments_on_concept_id"
  end

  create_table "years", force: :cascade do |t|
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "alumno_id", null: false
    t.index ["alumno_id"], name: "index_years_on_alumno_id"
  end

  add_foreign_key "alumnos", "families"
  add_foreign_key "concepts", "years"
  add_foreign_key "inscriptions", "alumnos"
  add_foreign_key "inscriptions", "cursos"
  add_foreign_key "payments", "alumnos"
  add_foreign_key "payments", "concepts"
  add_foreign_key "years", "alumnos"
end
