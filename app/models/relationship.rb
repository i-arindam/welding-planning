class Relationship < ApplicationRecord
  belongs_to :user
  belongs_to :potential_user

  RELATIONSHIP_TYPE = {
    self: 0,
    father: 1,
    mother: 2,
    son: 3,
    daughter: 4,
    brother: 5,
    sister: 6,
  }

  attr_accessor :full_name
end
