class RelationshipsController < ApplicationController

  def new
    render partial: 'new'
  end

  def create
    @relationship = current_user.relationships.new(relationship_params)
    @relationship.relative_id = find_user_for(@relationship.full_name)

    if @relationship.save!
      success = true
    else
      success = false
    end

    respond_to do |format|
      format.json { render json: { success: success, relationship: @relationship } }
    end
  end

  def show
  end

  def destroy
  end

  private

  def relationship_params
    params.require(:relationship).permit(:full_name, :relationship_type, :relative_of_id)
  end
end
