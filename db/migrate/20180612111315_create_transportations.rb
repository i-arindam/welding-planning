class CreateTransportations < ActiveRecord::Migration[5.1]
  def change
    create_table :transportations do |t|
      t.integer :event_id
      t.integer :people_count
      t.integer :cars_needed
      t.integer :cars_arranged

      t.string :from_location
      t.string :to_location
      t.integer :trips_required

      t.integer :phase
      t.integer :status

      t.timestamps
    end
  end
end
