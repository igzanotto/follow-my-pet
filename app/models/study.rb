class Study < ApplicationRecord
  belongs_to :clinical_history
  has_one_attached :photo

  validates :photo, presence: true
end
