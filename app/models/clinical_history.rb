class ClinicalHistory < ApplicationRecord
  belongs_to :user
  belongs_to :pet
  has_one :study
  has_one :vaccination
end
