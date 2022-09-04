class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :pet
  validates :start_datetime, presence: true
  validates :end_datetime, presence: true
end
