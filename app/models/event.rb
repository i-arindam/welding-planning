class Event < ApplicationRecord
  belongs_to :wedding, optional: true
  # hsa_many :participants
end
