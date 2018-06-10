class Weddings::ManageController < ApplicationController

  before_action :find_wedding

  def families
  end

  def attendees
  end

  private

  def find_wedding
    @wedding = Wedding.find(params[:wedding_id])
  end
end
