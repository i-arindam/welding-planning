class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.integer :wedding_id
      t.datetime :start_date
      t.datetime :end_date

      # About the event itself
      t.integer :event_type, limit: 2
      t.string :user_chosen_name
      t.string :red_flags
      t.integer :status

      t.timestamps
    end
  end
end
