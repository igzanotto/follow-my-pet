class ClinicalHistory < ApplicationRecord
  belongs_to :user
  belongs_to :pet
  has_one :study, dependent: :destroy
  has_one :vaccination, dependent: :destroy

  validates :description, presence: true
  validates :name, presence: true
  validates :date, presence: true
  validates :type_of_history, presence: true
  validates :user_id, presence: true
  validates :pet_id, presence: true
end
