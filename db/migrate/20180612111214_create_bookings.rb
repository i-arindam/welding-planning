class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.integer :event_id
      t.integer :venue_id
      t.datetime :start_date
      t.datetime :end_date
      t.integer :booking_status

      t.timestamps
    end
  end
end
