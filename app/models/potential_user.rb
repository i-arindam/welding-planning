# Entry inputs are almost always name
class PotentialUser < ApplicationRecord
  belongs_to :wedding

  before_save :fill_critical_field


  # Relationships related behavior
  has_many :relationships, foreign_key: :relative_of_id
  # Always store the most important relationship
  # to provide quick snapshot
  attr_accessor :primary_relationship

  private

  def fill_critical_field
    return if critical_to_convert.present?

    self.critical_to_convert = 1
  end
end
