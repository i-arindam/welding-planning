class WeddingsController < ApplicationController

  def index
    @weddings = Wedding.all
  end

  def new
    @wedding = Wedding.new
  end

  def create
    @wedding = Wedding.new(wedding_params)
    if @wedding.save!
      redirect_to @wedding
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def show
    @wedding = Wedding.find(params[:id])
  end

  def destroy
  end

  def archive
  end

  def begin
  end

  def finish
  end

  def showcase
  end

  private

  def wedding_params
    params.require(:wedding).permit(:name, :spouse_one_id, :spouse_two_id, :planner_name, :planner_relationship_id, :planner_relationships_spouse_identifier)
  end

  protected

end
