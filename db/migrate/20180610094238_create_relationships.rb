class CreateRelationships < ActiveRecord::Migration[5.1]
  def change
    create_table :relationships do |t|
      t.integer :relationship_type
      t.integer :relative_of_id
      t.integer :relative_id
      t.boolean :primary

      t.timestamps
    end
  end
end
