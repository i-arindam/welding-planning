# @TODO add null: false for all these columns
class AddSpouseDetailsToWedding < ActiveRecord::Migration[5.1]
  def change
    add_column :weddings, :spouse_one_id, :integer
    add_column :weddings, :spouse_two_id, :integer

    add_column :weddings, :planner_name, :string
    add_column :weddings, :planner_relationship_id, :integer
    add_column :weddings, :planner_relationships_spouse_identifier, :integer

    remove_column :weddings, :planner_id
    remove_column :weddings, :planner_relationship
  end
end
