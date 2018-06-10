class Wedding < ApplicationRecord
  has_many :users
  has_many :potential_users

  has_many :events

  before_save :validate_name_is_not_null

  before_validation :fill_seed_value_for_name, on: :create

  private

  def fill_seed_value_for_name
    return if name.present?

    rnd_name = ''

    user_one_name = spouse_one_id.to_s || 'RandomLover 1'
    user_two_name = spouse_two_id.to_s || 'RandomLover 2'

    self.name = user_one_name + ' weds ' + user_two_name
  end

  def validate_name_is_not_null
    return if name.present?

    errors.add(:base, :name_must_be_present)
  end
end
