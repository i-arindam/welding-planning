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

ActiveRecord::Schema.define(version: 20180612113540) do

  create_table "bookings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "user_id"
    t.integer "event_id"
    t.integer "venue_id"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer "booking_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "wedding_plan_id", null: false
    t.integer "event_type_id"
    t.boolean "custom_event_type", default: false
    t.string "name"
    t.integer "venue_id"
    t.boolean "needs_transport"
    t.boolean "needs_stay"
    t.boolean "needs_temporary_stay"
    t.boolean "needs_food"
    t.boolean "needs_materials"
    t.boolean "needs_shopping"
    t.integer "dress_code_id"
    t.integer "guest_list_id"
    t.integer "transportation_id"
    t.integer "phase"
    t.integer "allotted_slot_number"
  end

  create_table "guest_lists", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "user_id"
    t.integer "event_id"
    t.integer "rsvp_status"
    t.boolean "has_notifications_on"
    t.string "notification_preferences"
    t.string "meal_preferences"
    t.string "drinks_preferences"
    t.datetime "event_intimation_sent_at"
    t.datetime "event_intimation_responded_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "potential_users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.integer "wedding_id"
    t.integer "introducer_id"
    t.string "demographics_as_string"
    t.integer "converted_to_user_id"
    t.boolean "critical_to_convert"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "relationships", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "relationship_type"
    t.integer "relative_of_id"
    t.integer "relative_id"
    t.boolean "primary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "wedding_id"
    t.integer "gender", limit: 1
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

  create_table "venues", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "city"
    t.string "state"
    t.string "country"
    t.string "location"
    t.string "builder_name"
    t.float "stars", limit: 24
    t.float "average_rating", limit: 24
    t.integer "ratings_count"
    t.integer "finished_events"
    t.integer "property_type"
    t.boolean "has_stay"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wedding_plans", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "wedding_id", null: false
    t.integer "planner_id", null: false
    t.integer "total_steps"
    t.integer "steps_completed"
    t.datetime "deadline"
    t.float "estimated_budget", limit: 24
    t.string "estimated_budget_currency", default: "INR"
    t.float "current_budget_estimated", limit: 24
    t.float "current_budget_spent", limit: 24
    t.float "final_estimated_budget", limit: 24
    t.integer "status"
    t.integer "phase"
    t.float "overall_progress", limit: 24
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "weddings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", null: false
    t.integer "event_id", comment: "points to an event that captures the date span"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "spouse_one_id"
    t.integer "spouse_two_id"
    t.string "planner_name"
    t.integer "planner_relationship_id"
    t.integer "planner_relationships_spouse_identifier"
  end

end
