class Pet < ApplicationRecord
  belongs_to :user
  belongs_to :species_type
  has_many :clinical_histories, dependent: :destroy
  has_many :appointments, dependent: :destroy
  has_many :vaccinations, through: :clinical_histories
  has_many :studies, through: :clinical_histories

  has_one_attached :photo

end
