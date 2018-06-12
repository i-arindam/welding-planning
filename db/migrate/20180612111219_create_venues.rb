class CreateVenues < ActiveRecord::Migration[5.1]
  def change
    create_table :venues do |t|
      t.string :name
      t.string :city
      t.string :state
      t.string :country
      t.string :location
      t.string :builder_name

      t.float :stars
      t.float :average_rating
      t.integer :ratings_count

      t.integer :finished_events

      t.integer :property_type
      t.boolean :has_stay

      t.timestamps
    end
  end
end
