class Pet < ApplicationRecord
  belongs_to :user
  belongs_to :species_type
  has_many :clinical_histories, dependent: :destroy
  has_many :appointments, dependent: :destroy
  has_many :vaccinations, through: :clinical_histories
  has_many :studies, through: :clinical_histories

  has_one_attached :photo
  validates :photo, presence: true
  validates :user_id, presence: true
  validates :name, presence: true
  validates :birthday, presence: true
end
