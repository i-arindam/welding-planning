class CreatePotentialUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :potential_users do |t|
      t.string :name
      t.integer :wedding_id
      t.integer :introducer_id

      t.string :demographics_as_string
      t.integer :converted_to_user_id

      t.boolean :critical_to_convert

      t.timestamps
    end
  end
end
