class UpdateEventDbSchema < ActiveRecord::Migration[5.1]
  def change
    remove_column :events, :event_type
    remove_column :events, :user_chosen_name
    remove_column :events, :red_flags
    remove_column :events, :wedding_id

    add_column :events, :wedding_plan_id, :integer, null: false
    add_column :events, :event_type_id, :integer
    add_column :events, :custom_event_type, :boolean, default: false
    add_column :events, :name, :string

    add_column :events, :venue_id, :integer

    add_column :events, :needs_transport, :boolean
    add_column :events, :needs_stay, :boolean
    add_column :events, :needs_temporary_stay, :boolean
    add_column :events, :needs_food, :boolean
    add_column :events, :needs_materials, :boolean
    add_column :events, :needs_shopping, :boolean

    add_column :events, :dress_code_id, :integer
    add_column :events, :guest_list_id, :integer
    add_column :events, :transportation_id, :integer

    add_column :events, :phase, :integer
    add_column :events, :allotted_slot_number, :integer
  end
end
