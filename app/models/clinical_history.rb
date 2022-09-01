class ClinicalHistory < ApplicationRecord
  belongs_to :user
  belongs_to :pet
  has_one :study, dependent: :destroy
  has_one :vaccination, dependent: :destroy
end
