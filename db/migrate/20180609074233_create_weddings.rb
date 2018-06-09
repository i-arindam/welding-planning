class CreateWeddings < ActiveRecord::Migration[5.1]
  def change
    create_table :weddings do |t|
      t.string :name, null: false
      t.integer :planner_id, null: false, comment: 'who is creating this plan'
      t.integer :planner_relationship, null: false, comment: 'relationship of the planner with the bride/groom'
      t.integer :event_id, comment: 'points to an event that captures the date span'

      t.timestamps
    end
  end
end
