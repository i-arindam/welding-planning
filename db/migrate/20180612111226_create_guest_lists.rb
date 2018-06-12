class CreateGuestLists < ActiveRecord::Migration[5.1]
  def change
    create_table :guest_lists do |t|
      t.integer :user_id
      t.integer :event_id

      t.integer :rsvp_status

      t.boolean :has_notifications_on
      t.string :notification_preferences

      t.string :meal_preferences
      t.string :drinks_preferences

      t.datetime :event_intimation_sent_at
      t.datetime :event_intimation_responded_at

      t.timestamps
    end
  end
end
