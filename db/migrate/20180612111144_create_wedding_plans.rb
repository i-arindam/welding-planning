class CreateWeddingPlans < ActiveRecord::Migration[5.1]
  def change
    create_table :wedding_plans do |t|
      t.integer :wedding_id, null: false
      t.integer :planner_id, null: false

      t.integer :total_steps
      t.integer :steps_completed
      t.datetime :deadline

      t.float :estimated_budget
      t.string :estimated_budget_currency, default: 'INR'
      t.float :current_budget_estimated
      t.float :current_budget_spent
      t.float :final_estimated_budget

      t.integer :status
      t.integer :phase
      t.float :overall_progress

      t.timestamps
    end
  end
end
