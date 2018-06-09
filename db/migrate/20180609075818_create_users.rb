class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.integer :wedding_id
      t.integer :gender, limit: 1
      t.integer :age

      t.timestamps
    end
  end
end
