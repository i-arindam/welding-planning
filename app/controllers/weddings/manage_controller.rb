class Weddings::ManageController < ApplicationController

  before_action :find_wedding

  def families
    # @family_members =
    @owner = @wedding.owner
  end

  def attendees
  end

  private

  def find_wedding
    @wedding = Wedding.find(params[:wedding_id])
  end
end
