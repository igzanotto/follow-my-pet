class Vaccination < ApplicationRecord
  belongs_to :vaccine
  belongs_to :clinical_history
  has_one_attached :photo

  validates :expiration_date, presence: true
  validates :vaccine_id, presence: true
  validates :photo, presence: true
  validates :clinical_history_id, presence: true
end
