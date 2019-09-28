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

ActiveRecord::Schema.define(version: 20190910152047) do

  create_table "comentarios", force: :cascade do |t|
    t.string "text"
    t.integer "imagen_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["imagen_id"], name: "index_comentarios_on_imagen_id"
    t.index ["user_id"], name: "index_comentarios_on_user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.string "texto"
    t.integer "imagens_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["imagens_id"], name: "index_comments_on_imagens_id"
  end

  create_table "eventos", force: :cascade do |t|
    t.string "name"
    t.string "descripction"
    t.string "image"
    t.boolean "finish"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "eventousers", force: :cascade do |t|
    t.integer "user_id"
    t.integer "evento_id"
    t.boolean "subio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["evento_id"], name: "index_eventousers_on_evento_id"
    t.index ["user_id"], name: "index_eventousers_on_user_id"
  end

  create_table "imagens", force: :cascade do |t|
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "evento_id"
    t.integer "user_id"
    t.index ["evento_id"], name: "index_imagens_on_evento_id"
    t.index ["user_id"], name: "index_imagens_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
