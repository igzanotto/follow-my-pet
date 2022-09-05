class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :appointments, dependent: :destroy
  has_many :clinical_histories, dependent: :destroy
  has_many :pets, dependent: :destroy
  has_many :reviews, dependent: :destroy
  # has_many :vaccinations, through: :clinical_histories, dependent: :destroy
  # has_many :studies, through: :clinical_histories, dependent: :destroy

  has_one_attached :photo

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  include PgSearch::Model
  pg_search_scope :search_by_location,
  against: [ :location],
  using: {
    tsearch: { prefix: true }
  }
  pg_search_scope :search_by_name,
  against: [ :name],
  using: {
    tsearch: { prefix: true }
  }

end
